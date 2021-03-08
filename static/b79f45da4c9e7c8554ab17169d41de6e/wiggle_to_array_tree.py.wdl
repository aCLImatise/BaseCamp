version 1.0

task WiggleToArrayTreepy {
  command <<<
    wiggle_to_array_tree_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/bx-python:0.8.10--py36h5e0341f_0"
  }
  output {
    File out_stdout = stdout()
  }
}