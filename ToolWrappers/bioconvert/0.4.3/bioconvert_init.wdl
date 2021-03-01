version 1.0

task BioconvertInit {
  input {
    String? o
    String? i
    String input_extension
  }
  command <<<
    bioconvert_init \
      ~{input_extension} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    o: ""
    i: ""
    input_extension: "-o OUTPUT_EXTENSION, --output-extension OUTPUT_EXTENSION"
  }
  output {
    File out_stdout = stdout()
  }
}