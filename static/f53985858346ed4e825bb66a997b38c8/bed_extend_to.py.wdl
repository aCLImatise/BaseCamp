version 1.0

task BedExtendTopy {
  command <<<
    bed_extend_to_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/bx-python:0.8.11--py36h5e0341f_0"
  }
  output {
    File out_stdout = stdout()
  }
}