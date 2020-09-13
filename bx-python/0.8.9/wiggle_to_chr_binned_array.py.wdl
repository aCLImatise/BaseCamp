version 1.0

task WiggleToChrBinnedArraypy {
  input {
    String score_file
  }
  command <<<
    wiggle_to_chr_binned_array_py \
      ~{score_file}
  >>>
  parameter_meta {
    score_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}