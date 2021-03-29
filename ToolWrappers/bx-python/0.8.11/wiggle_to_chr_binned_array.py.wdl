version 1.0

task WiggleToChrBinnedArraypy {
  input {
    String score_file
  }
  command <<<
    wiggle_to_chr_binned_array_py \
      ~{score_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bx-python:0.8.11--py36h5e0341f_0"
  }
  parameter_meta {
    score_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}