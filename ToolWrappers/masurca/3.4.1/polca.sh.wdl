version 1.0

task Polcash {
  input {
    Boolean? r
    String? a
  }
  command <<<
    polca_sh \
      ~{if (r) then "-r" else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    r: ""
    a: ""
  }
  output {
    File out_stdout = stdout()
  }
}