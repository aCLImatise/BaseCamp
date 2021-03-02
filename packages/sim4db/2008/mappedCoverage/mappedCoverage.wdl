version 1.0

task MappedCoverage {
  input {
    Boolean? mask
    Boolean? cov
    Boolean? raw
    Boolean? blast
  }
  command <<<
    mappedCoverage \
      ~{if (mask) then "-mask" else ""} \
      ~{if (cov) then "-cov" else ""} \
      ~{if (raw) then "-raw" else ""} \
      ~{if (blast) then "-blast" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mask: "Read sequences from in.fasta, lower-case mask\\nany base with an alignment, write to out.fasta"
    cov: "Write coverage statistics to 'dat' instead of stdout"
    raw: "If present, assume the 'sim4db-results' are\\na space-separated list of 'iid begin end', one per line"
    blast: "Same idea as raw, expects 'UID.IID' for query id,\\nblast format (-m) 9."
  }
  output {
    File out_stdout = stdout()
  }
}