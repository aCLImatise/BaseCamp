version 1.0

task BedExtendTopy {
  command <<<
    bed_extend_to_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}