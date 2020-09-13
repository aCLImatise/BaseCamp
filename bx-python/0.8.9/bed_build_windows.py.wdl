version 1.0

task BedBuildWindowspy {
  command <<<
    bed_build_windows_py
  >>>
  output {
    File out_stdout = stdout()
  }
}