version 1.0

task PslToBigPsl {
  input {
    File? cds
    File file_dot_psl
    String stdout
  }
  command <<<
    pslToBigPsl \
      ~{file_dot_psl} \
      ~{stdout} \
      ~{if defined(cds) then ("-cds " +  '"' + cds + '"') else ""}
  >>>
  parameter_meta {
    cds: "-fa=file.fasta"
    file_dot_psl: ""
    stdout: ""
  }
  output {
    File out_stdout = stdout()
  }
}