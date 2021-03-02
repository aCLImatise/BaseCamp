version 1.0

task FastaCheck {
  input {
    Boolean? hyphen
    Boolean? aa
    String in
  }
  command <<<
    fasta_check \
      ~{in} \
      ~{if (hyphen) then "-hyphen" else ""} \
      ~{if (aa) then "-aa" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ncbi-amrfinderplus:3.9.8--h671e170_0"
  }
  parameter_meta {
    hyphen: ""
    aa: ""
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}