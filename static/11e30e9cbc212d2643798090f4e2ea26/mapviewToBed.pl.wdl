version 1.0

task MapviewToBedpl {
  input {
    String min_qual
    String max_hits
    File mapview_file_convert
  }
  command <<<
    mapviewToBed_pl \
      ~{min_qual} \
      ~{max_hits} \
      ~{mapview_file_convert}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    min_qual: "= Exclude alignments with <= this mapping quality score."
    max_hits: "= Exclude alignments with > this number of hits."
    mapview_file_convert: "= Mapview file to convert."
  }
  output {
    File out_stdout = stdout()
  }
}