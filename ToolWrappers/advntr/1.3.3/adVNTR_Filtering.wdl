version 1.0

task AdVNTRFiltering {
  input {
    Int? min_matches
    String sequences_dot_fa
    String keywords_dot_txt
    String output_dot_txt
  }
  command <<<
    adVNTR_Filtering \
      ~{sequences_dot_fa} \
      ~{keywords_dot_txt} \
      ~{output_dot_txt} \
      ~{if defined(min_matches) then ("--min_matches " +  '"' + min_matches + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    min_matches: "Minimum number of matches to accept a read"
    sequences_dot_fa: ""
    keywords_dot_txt: ""
    output_dot_txt: ""
  }
  output {
    File out_stdout = stdout()
  }
}