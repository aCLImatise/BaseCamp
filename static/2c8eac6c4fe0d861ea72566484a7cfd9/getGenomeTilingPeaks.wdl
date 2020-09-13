version 1.0

task GetGenomeTilingPeaks {
  input {
    Directory? tag_directories_analyze
    Boolean? res
    String options
  }
  command <<<
    getGenomeTilingPeaks \
      ~{options} \
      ~{if defined(tag_directories_analyze) then ("-d " +  '"' + tag_directories_analyze + '"') else ""} \
      ~{if (res) then "-res" else ""}
  >>>
  parameter_meta {
    tag_directories_analyze: "[tag directory 2] ... (tag directories to analyze)"
    res: "<#> (resolution of analysis)"
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}