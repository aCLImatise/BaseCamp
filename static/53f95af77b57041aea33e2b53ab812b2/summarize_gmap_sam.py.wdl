version 1.0

task SummarizeGmapSampy {
  input {
    String summarize
    String gmap
    String sam
    File var_file
    String in
    String tab_delimited
    File file_dot
  }
  command <<<
    summarize_gmap_sam_py \
      ~{summarize} \
      ~{gmap} \
      ~{sam} \
      ~{var_file} \
      ~{in} \
      ~{tab_delimited} \
      ~{file_dot}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    summarize: ""
    gmap: ""
    sam: ""
    var_file: ""
    in: ""
    tab_delimited: ""
    file_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}