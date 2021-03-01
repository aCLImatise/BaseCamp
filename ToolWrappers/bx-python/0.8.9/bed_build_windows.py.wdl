version 1.0

task BedBuildWindowspy {
  command <<<
    bed_build_windows_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}