version 1.0

task MegagtaTranslate {
  input {
    String translate
    String nucl_seq
  }
  command <<<
    megagta translate \
      ~{translate} \
      ~{nucl_seq}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    translate: ""
    nucl_seq: ""
  }
  output {
    File out_stdout = stdout()
  }
}