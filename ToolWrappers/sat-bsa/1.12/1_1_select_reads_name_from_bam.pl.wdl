version 1.0

task _1SelectReadsNameFromBampl {
  command <<<
    __1_select_reads_name_from_bam_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/sat-bsa:1.12--0"
  }
  output {
    File out_stdout = stdout()
  }
}