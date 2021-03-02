version 1.0

task ProdigalThem {
  input {
    String? f
    File? d
    Boolean? c
    File? a
    String prodigal
  }
  command <<<
    prodigal them_ \
      ~{prodigal} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if (c) then "-c" else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    f: ""
    d: ""
    c: ""
    a: ""
    prodigal: ""
  }
  output {
    File out_stdout = stdout()
  }
}