version 1.0

task MethylDackelFormat {
  input {
    String m_bias
    String extract
    String format_dot
    String per_read
  }
  command <<<
    MethylDackel format_ \
      ~{m_bias} \
      ~{extract} \
      ~{format_dot} \
      ~{per_read}
  >>>
  runtime {
    docker: "quay.io/biocontainers/methyldackel:0.5.2--h7435645_0"
  }
  parameter_meta {
    m_bias: "Determine the position-dependent methylation bias in a dataset,\\nproducing diagnostic SVG images."
    extract: "Extract methylation metrics from an alignment file in BAM/CRAM"
    format_dot: "mergeContext   Combine single Cytosine metrics from 'MethylDackel extract' into"
    per_read: "Generate a per-read methylation summary."
  }
  output {
    File out_stdout = stdout()
  }
}