version 1.0

task MakeSVsDetectionpl {
  command <<<
    make_SVs_detection_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/sat-bsa:1.12--0"
  }
  output {
    File out_stdout = stdout()
  }
}