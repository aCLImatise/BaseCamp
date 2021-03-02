version 1.0

task CentrifugeBuildSharedSequencepl {
  command <<<
    centrifuge_BuildSharedSequence_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}