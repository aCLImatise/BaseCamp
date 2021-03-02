version 1.0

task _2PickUpReadspl {
  command <<<
    __2_pick_up_reads_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/sat-bsa:1.12--0"
  }
  output {
    File out_stdout = stdout()
  }
}