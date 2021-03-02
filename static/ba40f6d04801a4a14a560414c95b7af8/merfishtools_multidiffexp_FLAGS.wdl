version 1.0

task MerfishtoolsMultidiffexpFLAGS {
  input {
    String mer_fish_tools
    String multi_diff_exp
    String for
    String more
    String information
    String try
  }
  command <<<
    merfishtools multidiffexp FLAGS \
      ~{mer_fish_tools} \
      ~{multi_diff_exp} \
      ~{for} \
      ~{more} \
      ~{information} \
      ~{try}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mer_fish_tools: ""
    multi_diff_exp: ""
    for: ""
    more: ""
    information: ""
    try: ""
  }
  output {
    File out_stdout = stdout()
  }
}