version 1.0

task Neurodocker {
  input {
    Boolean? var_0
    String? var_1
    String generate
  }
  command <<<
    neurodocker \
      ~{generate} \
      ~{if (var_0) then "-V" else ""} \
      ~{if defined(var_1) then ("-v " +  '"' + var_1 + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    var_0: ""
    var_1: ""
    generate: "generate recipes"
  }
  output {
    File out_stdout = stdout()
  }
}