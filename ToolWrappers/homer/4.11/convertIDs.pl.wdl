version 1.0

task ConvertIDspl {
  input {
    File input_file
    String organism
    String id_type
    String? header
    String? keep
    String? original
    String? all
  }
  command <<<
    convertIDs_pl \
      ~{input_file} \
      ~{organism} \
      ~{id_type} \
      ~{header} \
      ~{keep} \
      ~{original} \
      ~{all}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file: ""
    organism: ""
    id_type: ""
    header: ""
    keep: ""
    original: ""
    all: ""
  }
  output {
    File out_stdout = stdout()
  }
}