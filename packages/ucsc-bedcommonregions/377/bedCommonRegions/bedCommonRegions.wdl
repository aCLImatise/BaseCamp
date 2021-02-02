version 1.0

task BedCommonRegions {
  command <<<
    bedCommonRegions
  >>>
  output {
    File out_stdout = stdout()
  }
}