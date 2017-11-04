package com.titans.oblie.system;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/RequestServlet")
public class RequestServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("query");

        response.setContentType("text/html");

        String responseString  = "<div class=\"col-md-12 col-sm-12 col-xs-12\">\n" +
                "        <div class=\"x_panel\">\n" +
                "          <div class=\"x_title\">\n" +
                "            <h2>Related Previous Cases</h2>\n" +
                "            <div class=\"clearfix\"></div>\n" +
                "          </div>\n" +
                "          <div class=\"x_content\">\n" +
                "            <table id=\"datatable-responsive\" class=\"table table-striped table-bordered dt-responsive nowrap\" cellspacing=\"0\" width=\"100%\" style=\"word-wrap: break-word!important;\">\n" +
                "              <thead>\n" +
                "              <tr>\n" +
                "                <th>Case ID </th>\n" +
                "                <th>Case Name</th>\n" +
                "                <th>Court</th>\n" +
                "                <th>Published Date</th>\n" +
                "                <th>Judges</th>\n" +
                "              </tr>\n" +
                "              </thead>\n" +
                "              <tbody>\n" +
                "              <tr>\n" +
                "                <td>14-16785</td>\n" +
                "                <td><a href=\"http://caselaw.findlaw.com/summary/opinion/us-9th-circuit/2017/08/29/280333.html\">Gregg v. Hawaii Department of Public Safety</a></td>\n" +
                "                <td>United States Ninth Circuit</td>\n" +
                "                <td>2017/08/29</td>\n" +
                "                <td>FISHER</td>\n" +
                "              </tr>\n" +
                "              <tr>\n" +
                "                <td>14-16785</td>\n" +
                "                <td><a href=\"http://caselaw.findlaw.com/summary/opinion/us-9th-circuit/2017/08/29/280333.html\">Gregg v. Hawaii Department of Public Safety</a></td>\n" +
                "                <td>United States Ninth Circuit</td>\n" +
                "                <td>2017/08/29</td>\n" +
                "                <td>FISHER</td>\n" +
                "              </tr>\n" +
                "              <tr>\n" +
                "                <td>14-16785</td>\n" +
                "                <td><a href=\"http://caselaw.findlaw.com/summary/opinion/us-9th-circuit/2017/08/29/280333.html\">Gregg v. Hawaii Department of Public Safety</a></td>\n" +
                "                <td>United States Ninth Circuit</td>\n" +
                "                <td>2017/08/29</td>\n" +
                "                <td>FISHER</td>\n" +
                "              </tr>\n" +
                "              <tr>\n" +
                "                <td>14-16785</td>\n" +
                "                <td><a href=\"http://caselaw.findlaw.com/summary/opinion/us-9th-circuit/2017/08/29/280333.html\">Gregg v. Hawaii Department of Public Safety</a></td>\n" +
                "                <td>United States Ninth Circuit</td>\n" +
                "                <td>2017/08/29</td>\n" +
                "                <td>FISHER</td>\n" +
                "              </tr>\n" +
                "              <tr>\n" +
                "                <td>14-16785</td>\n" +
                "                <td><a href=\"http://caselaw.findlaw.com/summary/opinion/us-9th-circuit/2017/08/29/280333.html\">Gregg v. Hawaii Department of Public Safety</a></td>\n" +
                "                <td>United States Ninth Circuit</td>\n" +
                "                <td>2017/08/29</td>\n" +
                "                <td>FISHER</td>\n" +
                "              </tr>\n" +
                "              <tr>\n" +
                "                <td>14-16785</td>\n" +
                "                <td><a href=\"http://caselaw.findlaw.com/summary/opinion/us-9th-circuit/2017/08/29/280333.html\">Gregg v. Hawaii Department of Public Safety</a></td>\n" +
                "                <td>United States Ninth Circuit</td>\n" +
                "                <td>2017/08/29</td>\n" +
                "                <td>FISHER</td>\n" +
                "              </tr>\n" +
                "              <tr>\n" +
                "                <td>14-16785</td>\n" +
                "                <td><a href=\"http://caselaw.findlaw.com/summary/opinion/us-9th-circuit/2017/08/29/280333.html\">Gregg v. Hawaii Department of Public Safety</a></td>\n" +
                "                <td>United States Ninth Circuit</td>\n" +
                "                <td>2017/08/29</td>\n" +
                "                <td>FISHER</td>\n" +
                "              </tr>\n" +
                "              <tr>\n" +
                "                <td>14-16785</td>\n" +
                "                <td><a href=\"http://caselaw.findlaw.com/summary/opinion/us-9th-circuit/2017/08/29/280333.html\">Gregg v. Hawaii Department of Public Safety</a></td>\n" +
                "                <td>United States Ninth Circuit</td>\n" +
                "                <td>2017/08/29</td>\n" +
                "                <td>FISHER</td>\n" +
                "              </tr>\n" +
                "              <tr>\n" +
                "                <td>14-16785</td>\n" +
                "                <td><a href=\"http://caselaw.findlaw.com/summary/opinion/us-9th-circuit/2017/08/29/280333.html\">Gregg v. Hawaii Department of Public Safety</a></td>\n" +
                "                <td>United States Ninth Circuit</td>\n" +
                "                <td>2017/08/29</td>\n" +
                "                <td>FISHER</td>\n" +
                "              </tr>\n" +
                "              <tr>\n" +
                "                <td>14-16785</td>\n" +
                "                <td><a href=\"http://caselaw.findlaw.com/summary/opinion/us-9th-circuit/2017/08/29/280333.html\">Gregg v. Hawaii Department of Public Safety</a></td>\n" +
                "                <td>United States Ninth Circuit</td>\n" +
                "                <td>2017/08/29</td>\n" +
                "                <td>FISHER</td>\n" +
                "              </tr>\n" +
                "              <tr>\n" +
                "                <td>14-16785</td>\n" +
                "                <td><a href=\"http://caselaw.findlaw.com/summary/opinion/us-9th-circuit/2017/08/29/280333.html\">Gregg v. Hawaii Department of Public Safety</a></td>\n" +
                "                <td>United States Ninth Circuit</td>\n" +
                "                <td>2017/08/29</td>\n" +
                "                <td>FISHER</td>\n" +
                "              </tr>\n" +
                "              <tr>\n" +
                "                <td>14-16785</td>\n" +
                "                <td><a href=\"http://caselaw.findlaw.com/summary/opinion/us-9th-circuit/2017/08/29/280333.html\">Gregg v. Hawaii Department of Public Safety</a></td>\n" +
                "                <td>United States Ninth Circuit</td>\n" +
                "                <td>2017/08/29</td>\n" +
                "                <td>FISHER</td>\n" +
                "              </tr>\n" +
                "              <tr>\n" +
                "                <td>14-16785</td>\n" +
                "                <td><a href=\"http://caselaw.findlaw.com/summary/opinion/us-9th-circuit/2017/08/29/280333.html\">Gregg v. Hawaii Department of Public Safety</a></td>\n" +
                "                <td>United States Ninth Circuit</td>\n" +
                "                <td>2017/08/29</td>\n" +
                "                <td>FISHER</td>\n" +
                "              </tr> <tr>\n" +
                "                <td>14-16785</td>\n" +
                "                <td><a href=\"http://caselaw.findlaw.com/summary/opinion/us-9th-circuit/2017/08/29/280333.html\">Gregg v. Hawaii Department of Public Safety</a></td>\n" +
                "                <td>United States Ninth Circuit</td>\n" +
                "                <td>2017/08/29</td>\n" +
                "                <td>FISHER</td>\n" +
                "              </tr>\n" +
                "              </tbody>\n" +
                "            </table>\n" +
                "          </div>\n" +
                "        </div>" ;

        response.getWriter().write(responseString);
    }
}