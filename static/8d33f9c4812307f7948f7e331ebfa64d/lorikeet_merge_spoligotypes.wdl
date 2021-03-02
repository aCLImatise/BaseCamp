version 1.0

task LorikeetMergespoligotypes {
  input {
    Directory? input_directory_contains
    String? output_prefix
    Boolean? recursive
    File? pattern
    String? jar
    String java
    String merge_sp_oligo_types
  }
  command <<<
    lorikeet merge_spoligotypes \
      ~{java} \
      ~{merge_sp_oligo_types} \
      ~{if defined(input_directory_contains) then ("--input " +  '"' + input_directory_contains + '"') else ""} \
      ~{if defined(output_prefix) then ("--output " +  '"' + output_prefix + '"') else ""} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if defined(pattern) then ("--pattern " +  '"' + pattern + '"') else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_directory_contains: "Input directory that contains all spoligotype files. You can specify multiple -i arguments"
    output_prefix: "Output prefix"
    recursive: "Search input directories recursively [Default=true]"
    pattern: "File name pattern for the input files. [Default=\\\".*.spoligotype]\\\"\\n"
    jar: ""
    java: ""
    merge_sp_oligo_types: ""
  }
  output {
    File out_stdout = stdout()
  }
}