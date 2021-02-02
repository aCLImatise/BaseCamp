version 1.0

task ArbConvertAln {
  input {
    String where
  }
  command <<<
    arb_convert_aln \
      ~{where}
  >>>
  parameter_meta {
    where: "INFMT  may be 'GenBank', 'EMBL', 'AE2' or 'SwissProt' and\\nOUTFMT may be 'GenBank', 'EMBL', 'AE2', 'NEXUS', 'PHYLIP', 'FASTDNAML', 'GCG' or 'Printable'"
  }
  output {
    File out_stdout = stdout()
  }
}