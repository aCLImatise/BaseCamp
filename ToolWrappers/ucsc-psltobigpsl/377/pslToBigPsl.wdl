version 1.0

task PslToBigPsl {
  input {
    File? cds
    File? fa
    File file_dot_psl
    String stdout
  }
  command <<<
    pslToBigPsl \
      ~{file_dot_psl} \
      ~{stdout} \
      ~{if defined(cds) then ("-cds " +  '"' + cds + '"') else ""} \
      ~{if defined(fa) then ("-fa " +  '"' + fa + '"') else ""}
  >>>
  parameter_meta {
    cds: ""
    fa: ""
    file_dot_psl: ""
    stdout: ""
  }
  output {
    File out_stdout = stdout()
  }
}