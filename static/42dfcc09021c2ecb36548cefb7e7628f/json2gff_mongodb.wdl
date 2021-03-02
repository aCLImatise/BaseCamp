version 1.0

task Json2gffMongodb {
  input {
    String? input_file
    String? gff_file
  }
  command <<<
    json2gff mongodb \
      ~{input_file} \
      ~{gff_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file: ""
    gff_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}