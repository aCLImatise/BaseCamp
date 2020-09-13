version 1.0

task DAM2fasta {
  input {
    Boolean? vu
  }
  command <<<
    DAM2fasta \
      ~{if (vu) then "-vU" else ""}
  >>>
  parameter_meta {
    vu: ""
  }
  output {
    File out_stdout = stdout()
  }
}