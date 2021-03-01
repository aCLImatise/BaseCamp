version 1.0

task LorikeetMultitype {
  input {
    Directory? input_directory_contains
    String? output_prefix
    String? threshold
    Boolean? recursive
    File? pattern
    String? jar
    String java
    String multi_typing
  }
  command <<<
    lorikeet multi_type \
      ~{java} \
      ~{multi_typing} \
      ~{if defined(input_directory_contains) then ("--input " +  '"' + input_directory_contains + '"') else ""} \
      ~{if defined(output_prefix) then ("--output " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
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
    threshold: "Minimum threshold"
    recursive: "Search input directories recursively [Default=true]"
    pattern: "File name pattern for the input files. [Default=\\\".*.spoligotype]\\\"\\n"
    jar: ""
    java: ""
    multi_typing: ""
  }
  output {
    File out_stdout = stdout()
  }
}