version 1.0

task LynerPlot {
  input {
    File? annotation_split
  }
  command <<<
    lyner plot \
      ~{if defined(annotation_split) then ("--annotation-split " +  '"' + annotation_split + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    annotation_split: "RANGE"
  }
  output {
    File out_stdout = stdout()
  }
}