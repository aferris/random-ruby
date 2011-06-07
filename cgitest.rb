require "cgi"
cgi = CGI.new("html3")  # add HTML generation methods
cgi.out {
  CGI.pretty (
    cgi.html {
      cgi.head { cgi.title{"TITLE"} } +
      cgi.body {
        cgi.form {
          cgi.textarea("get_text") +
          cgi.br +
          cgi.submit
        } +
        cgi.h1 { "This is big!" } +
        cgi.center { "Jazz Greats of the 20" +
          cgi.small {"th"} + " century" + cgi.hr
        } + cgi.p + cgi.table ('BORDER' => '5') {
          cgi.tr { cgi.td {"Artist"} + cgi.td {"Album"} } +
          cgi.tr { cgi.td {"Davis, Miles"} +
          cgi.td {"Kind of Blue"} }
        }
      }
    }
  ) # CGI.pretty is a method call, not a block
}
