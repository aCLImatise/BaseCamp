version 1.0

task BedCommonRegions {
  command <<<
    bedCommonRegions
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}