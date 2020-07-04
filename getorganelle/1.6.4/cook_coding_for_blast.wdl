version 1.0

task CookCodingForBlast.py {
  input {
    String fast_a_files
  }
  command <<<
    cook_coding_for_blast.py \
      ~{fast_a_files}
  >>>
  parameter_meta {
    fast_a_files: ""
  }
}