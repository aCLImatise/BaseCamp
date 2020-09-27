version 1.0

task PvacseqCoverageFilterOutputFile {
  input {
    String? normal_cov
    String pvac_seq
    String coverage_filter
  }
  command <<<
    pvacseq coverage_filter output_file \
      ~{pvac_seq} \
      ~{coverage_filter} \
      ~{if defined(normal_cov) then ("--normal-cov " +  '"' + normal_cov + '"') else ""}
  >>>
  parameter_meta {
    normal_cov: ""
    pvac_seq: ""
    coverage_filter: ""
  }
  output {
    File out_stdout = stdout()
  }
}