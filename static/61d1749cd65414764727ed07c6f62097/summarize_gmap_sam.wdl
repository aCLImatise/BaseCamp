version 1.0

task SummarizeGmapSam.py {
  input {
    String summarize
    String gmap
    String sam
    File file
    String in
    String tab_delimited
    File file_dot
  }
  command <<<
    summarize_gmap_sam.py \
      ~{summarize} \
      ~{gmap} \
      ~{sam} \
      ~{file} \
      ~{in} \
      ~{tab_delimited} \
      ~{file_dot}
  >>>
  parameter_meta {
    summarize: ""
    gmap: ""
    sam: ""
    file: ""
    in: ""
    tab_delimited: ""
    file_dot: ""
  }
}