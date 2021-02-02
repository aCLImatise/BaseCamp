version 1.0

task Fastautils {
  input {
    Boolean? cite
  }
  command <<<
    fasta_utils \
      ~{if (cite) then "--cite" else ""}
  >>>
  parameter_meta {
    cite: ""
  }
  output {
    File out_stdout = stdout()
  }
}