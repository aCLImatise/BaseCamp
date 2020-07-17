version 1.0

task AdVNTRFiltering {
  input {
    String sequences_dot_fa
    String keywords_dot_txt
    String output_dot_txt
  }
  command <<<
    adVNTR-Filtering \
      ~{sequences_dot_fa} \
      ~{keywords_dot_txt} \
      ~{output_dot_txt}
  >>>
  parameter_meta {
    sequences_dot_fa: ""
    keywords_dot_txt: ""
    output_dot_txt: ""
  }
}