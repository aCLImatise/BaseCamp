version 1.0

task MakeLongReadsAlignmentpl {
  command <<<
    make_Long_reads_alignment_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/sat-bsa:1.12--0"
  }
  output {
    File out_stdout = stdout()
  }
}