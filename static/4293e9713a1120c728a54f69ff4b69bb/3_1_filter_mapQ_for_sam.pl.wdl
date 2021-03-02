version 1.0

task _1FilterMapQForSampl {
  command <<<
    __1_filter_mapQ_for_sam_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/sat-bsa:1.12--0"
  }
  output {
    File out_stdout = stdout()
  }
}