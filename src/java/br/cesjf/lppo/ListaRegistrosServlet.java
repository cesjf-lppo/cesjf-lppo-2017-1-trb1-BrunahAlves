package br.cesjf.lppo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ListaRegistrosServlet", urlPatterns = {"/lista.html", "/lista-novos.html", "/lista-em-uso.html", "/lista-danificados.html", "/lista-perdidos.html"})
public class ListaRegistrosServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Equipamento> equipamentos = new ArrayList<>();
        System.out.println(request.getServletPath());
        String filtro = request.getParameter("filtro");
        String sql = "SELECT * FROM equipamento ORDER BY local";
        if (request.getServletPath().equals("/lista-novos.html")) {
            filtro = "0";
        } else if (request.getServletPath().equals("/lista-em-uso.html")) {
            filtro = "1";
        } else if (request.getServletPath().equals("/lista-danificado.html")) {
            filtro = "2";
        } else if (request.getServletPath().equals("/lista-perdido.html")) {
            filtro = "3";
        }
        if (filtro != null) {
            Integer estado = Integer.parseInt(filtro);
            sql = "SELECT * FROM equipamento WHERE estado=" + estado + " ORDER BY local";
        }
        try {

            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conexao = DriverManager.getConnection("jdbc:derby://localhost:1527/lppo-2017-1", "usuario", "senha");
            Statement operacao = conexao.createStatement();
            ResultSet resultado = operacao.executeQuery(sql);

            while (resultado.next()) {
                Equipamento equipamento = new Equipamento();
                equipamento.setId(resultado.getLong("Id"));
                equipamento.setSerie(resultado.getString("serie"));
                equipamento.setLocal(resultado.getString("local"));
                equipamento.setDescricao(resultado.getString("descricao"));
                equipamento.setEstado(resultado.getInt("estado"));
                equipamentos.add(equipamento);
            }

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ListaRegistrosServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ListaRegistrosServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.setAttribute("equipamentos", equipamentos);
        request.setAttribute("filtro", filtro);
        request.getRequestDispatcher("WEB-INF/lista-registros.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
