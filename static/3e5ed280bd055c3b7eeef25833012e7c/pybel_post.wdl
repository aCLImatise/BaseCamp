version 1.0

task PybelPost {
  input {
    String? host
    File path
  }
  command <<<
    pybel post \
      ~{path} \
      ~{if defined(host) then ("--host " +  '"' + host + '"') else ""}
  >>>
  parameter_meta {
    host: "URL of BEL Commons. Defaults to https://bel- commons.scai.fraunhofer.de"
    path: ""
  }
}