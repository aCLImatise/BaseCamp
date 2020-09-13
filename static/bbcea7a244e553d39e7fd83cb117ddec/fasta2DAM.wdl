version 1.0

task Fasta2DAM {
  input {
    Boolean? v
  }
  command <<<
    fasta2DAM \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}