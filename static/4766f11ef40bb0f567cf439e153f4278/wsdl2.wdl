version 1.0

task Wsdl2 {
  input {
    Boolean? domain
    Boolean? language
    Boolean? namespace
    Boolean? nologo
    Boolean? out
    Boolean? password
    Boolean? protocol
    Boolean? fields
    Boolean? username
    Boolean? proxy
    Boolean? proxy_username
    Boolean? proxy_password
    Boolean? proxy_domain
    Boolean? app_setting_url_key
    Boolean? app_setting_baseurl
    Boolean? sample
    String classes_dot
  }
  command <<<
    wsdl2 \
      ~{classes_dot} \
      ~{if (domain) then "-domain" else ""} \
      ~{if (language) then "-language" else ""} \
      ~{if (namespace) then "-namespace" else ""} \
      ~{if (nologo) then "-nologo" else ""} \
      ~{if (out) then "-out" else ""} \
      ~{if (password) then "-password" else ""} \
      ~{if (protocol) then "-protocol" else ""} \
      ~{if (fields) then "-fields" else ""} \
      ~{if (username) then "-username" else ""} \
      ~{if (proxy) then "-proxy" else ""} \
      ~{if (proxy_username) then "-proxyusername" else ""} \
      ~{if (proxy_password) then "-proxypassword" else ""} \
      ~{if (proxy_domain) then "-proxydomain" else ""} \
      ~{if (app_setting_url_key) then "-appsettingurlkey" else ""} \
      ~{if (app_setting_baseurl) then "-appsettingbaseurl" else ""} \
      ~{if (sample) then "-sample" else ""}
  >>>
  parameter_meta {
    domain: ":domain           Domain of username for server authentication."
    language: ":language       Language of generated code. Allowed CS (default)\\nand VB. You can also specify the fully qualified\\nname of a class that implements the\\nSystem.CodeDom.Compiler.CodeDomProvider Class."
    namespace: ":ns            The namespace of the generated code, default\\nnamespace if none."
    nologo: "Surpress the startup logo."
    out: ":filename            The target file for generated code."
    password: ":pwd            Password used to contact the server."
    protocol: ":protocol           Protocol to implement. Allowed: Soap (default),\\nHttpGet or HttpPost."
    fields: "Generate fields instead of properties in data"
    username: ":username       Username used to contact the server."
    proxy: ":url                   Address of the proxy."
    proxy_username: ":username Username used to contact the proxy."
    proxy_password: ":pwd      Password used to contact the proxy."
    proxy_domain: ":domain     Domain of username for proxy authentication."
    app_setting_url_key: ":key Configuration key that contains the default\\nurl for the generated WS proxy."
    app_setting_baseurl: ":url Base url to use when constructing the\\nservice url."
    sample: ":[binding/]operation  Display a sample SOAP request and response."
    classes_dot: "-server                      Generate server instead of client proxy code."
  }
  output {
    File out_stdout = stdout()
  }
}