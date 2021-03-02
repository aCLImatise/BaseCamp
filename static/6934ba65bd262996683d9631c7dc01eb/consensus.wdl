version 1.0

task Consensus {
  input {
    Boolean? reads
    Boolean? contigs
  }
  command <<<
    consensus \
      ~{if (reads) then "--reads" else ""} \
      ~{if (contigs) then "--contigs" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reads: "reads file (string)"
    contigs: "contigs file (string)"
  }
  output {
    File out_stdout = stdout()
  }
}