version 1.0

task MakeLocalReadsSelectionpl {
  command <<<
    make_Local_reads_selection_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/sat-bsa:1.12--0"
  }
  output {
    File out_stdout = stdout()
  }
}