version 1.0

task Disco {
  input {
    Boolean? nologo
    Boolean? no_save
    Boolean? out
    Boolean? username
    Boolean? password
    Boolean? domain
    Boolean? proxy
    Boolean? proxy_username
    Boolean? proxy_password
    Boolean? proxy_domin
    String url
  }
  command <<<
    disco \
      ~{url} \
      ~{if (nologo) then "-nologo" else ""} \
      ~{if (no_save) then "-nosave" else ""} \
      ~{if (out) then "-out" else ""} \
      ~{if (username) then "-username" else ""} \
      ~{if (password) then "-password" else ""} \
      ~{if (domain) then "-domain" else ""} \
      ~{if (proxy) then "-proxy" else ""} \
      ~{if (proxy_username) then "-proxyusername" else ""} \
      ~{if (proxy_password) then "-proxypassword" else ""} \
      ~{if (proxy_domin) then "-proxydomin" else ""}
  >>>
  parameter_meta {
    nologo: "Supress the startup logo"
    no_save: "Do not save the discovered documents to disk.\\nThe default is to save the documents."
    out: ":directory     The directory where to save the discovered documents.\\nBy default, documents are saved in the current\\ndirectory."
    username: ":username"
    password: ":password"
    domain: ":domain     The credentials to use when connecting to the server."
    proxy: ":url            The url of the proxy server to use for http requests."
    proxy_username: ":name"
    proxy_password: ":pwd"
    proxy_domin: ":domain    The credentials to use when connection to the proxy."
    url: ""
  }
  output {
    File out_stdout = stdout()
  }
}