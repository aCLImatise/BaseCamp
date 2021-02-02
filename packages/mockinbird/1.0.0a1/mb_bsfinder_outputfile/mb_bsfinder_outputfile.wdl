version 1.0

task MbbsfinderOutputfile {
  input {
    Int? min_cov
    String? threshold
    String mb_bs_finder
  }
  command <<<
    mb_bsfinder outputfile \
      ~{mb_bs_finder} \
      ~{if defined(min_cov) then ("--mincov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""}
  >>>
  parameter_meta {
    min_cov: ""
    threshold: ""
    mb_bs_finder: ""
  }
  output {
    File out_stdout = stdout()
  }
}