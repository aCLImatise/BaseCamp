version 1.0

task RgiWildcardAnnotation {
  input {
    Directory? input_directory
    File? card_json
    String? v
  }
  command <<<
    rgi wildcard_annotation \
      ~{if defined(input_directory) then ("--input_directory " +  '"' + input_directory + '"') else ""} \
      ~{if defined(card_json) then ("--card_json " +  '"' + card_json + '"') else ""} \
      ~{if defined(v) then ("-v " +  '"' + v + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rgi:5.2.0--pyhdfd78af_0"
  }
  parameter_meta {
    input_directory: "input directory for wildcard"
    card_json: "card.json file\\n"
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}