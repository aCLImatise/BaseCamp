version 1.0

task GetGenomeTilingPeaks {
  input {
    String? tag_directories_analyze
    Boolean? res
  }
  command <<<
    getGenomeTilingPeaks \
      ~{if defined(tag_directories_analyze) then ("-d " +  '"' + tag_directories_analyze + '"') else ""} \
      ~{true="-res" false="" res}
  >>>
  parameter_meta {
    tag_directories_analyze: "[tag directory 2] ... (tag directories to analyze)"
    res: "<#> (resolution of analysis)"
  }
}