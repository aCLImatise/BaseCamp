version 1.0

task PybelPost {
  input {
    String? host
  }
  command <<<
    pybel post \
      ~{if defined(host) then ("--host " +  '"' + host + '"') else ""}
  >>>
  parameter_meta {
    host: "URL of BEL Commons. Defaults to https://bel-"
  }
  output {
    File out_stdout = stdout()
  }
}