version 1.0

task FermiExample {
  input {
    String? l
    String? k
    Boolean? ceu
    String in_dot_fq
  }
  command <<<
    fermi example \
      ~{in_dot_fq} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""} \
      ~{if (ceu) then "-ceU" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    l: ""
    k: ""
    ceu: ""
    in_dot_fq: ""
  }
  output {
    File out_stdout = stdout()
  }
}