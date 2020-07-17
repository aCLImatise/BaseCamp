version 1.0

task EslSsdrawMsafile {
  input {
    String ss_postscript_template
    String output_postscript_file_name
  }
  command <<<
    esl-ssdraw msafile \
      ~{ss_postscript_template} \
      ~{output_postscript_file_name}
  >>>
  parameter_meta {
    ss_postscript_template: ""
    output_postscript_file_name: ""
  }
}