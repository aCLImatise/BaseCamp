version 1.0

task WiggleToChrBinnedArray.py {
  input {
    String score_file
  }
  command <<<
    wiggle_to_chr_binned_array.py \
      ~{score_file}
  >>>
  parameter_meta {
    score_file: ""
  }
}