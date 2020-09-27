version 1.0

task LorikeetMultitype {
  input {
    Directory? _input_valueinput
    String? _output_valueoutput
    String? _threshold_valueminimum
    Boolean? _recursivesearch_input
    File? _pattern_valuefile
    String? jar
    String java
    String multi_typing
  }
  command <<<
    lorikeet multi_type \
      ~{java} \
      ~{multi_typing} \
      ~{if defined(_input_valueinput) then ("-i " +  '"' + _input_valueinput + '"') else ""} \
      ~{if defined(_output_valueoutput) then ("-o " +  '"' + _output_valueoutput + '"') else ""} \
      ~{if defined(_threshold_valueminimum) then ("-t " +  '"' + _threshold_valueminimum + '"') else ""} \
      ~{if (_recursivesearch_input) then "-r" else ""} \
      ~{if defined(_pattern_valuefile) then ("-p " +  '"' + _pattern_valuefile + '"') else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    _input_valueinput: "| --input <value>\\nInput directory that contains all spoligotype files. You can specify multiple -i arguments"
    _output_valueoutput: "| --output <value>\\nOutput prefix"
    _threshold_valueminimum: "| --threshold <value>\\nMinimum threshold"
    _recursivesearch_input: "| --recursive\\nSearch input directories recursively [Default=true]"
    _pattern_valuefile: "| --pattern <value>\\nFile name pattern for the input files. [Default=\\\".*.spoligotype]\\\"\\n"
    jar: ""
    java: ""
    multi_typing: ""
  }
  output {
    File out_stdout = stdout()
  }
}