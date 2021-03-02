version 1.0

task CnvAnnotatepyCnvFile {
  input {
    String? o
    String cnv_annotated_otp_y
    String annotate
    String cnv_file
  }
  command <<<
    cnv_annotate_py cnv_file \
      ~{cnv_annotated_otp_y} \
      ~{annotate} \
      ~{cnv_file} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    o: ""
    cnv_annotated_otp_y: ""
    annotate: ""
    cnv_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}