version 1.0

task BioconvertInit {
  input {
    String? var_0
    String? o
    String outputextension__outputextension
    String output_extension
  }
  command <<<
    bioconvert_init \
      ~{outputextension__outputextension} \
      ~{output_extension} \
      ~{if defined(var_0) then ("--input-extension " +  '"' + var_0 + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    var_0: ""
    o: ""
    outputextension__outputextension: "-o OUTPUT_EXTENSION, --output-extension OUTPUT_EXTENSION"
    output_extension: "----"
  }
  output {
    File out_stdout = stdout()
  }
}