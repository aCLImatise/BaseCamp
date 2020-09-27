version 1.0

task Fasta2DB {
  input {
    Boolean? v
  }
  command <<<
    fasta2DB \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}