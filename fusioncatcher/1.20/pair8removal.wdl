version 1.0

task Pair8removal.py {
  input {
    String? var_input
    String? var_output
    Int? length
  }
  command <<<
    pair8removal.py \
      ~{if defined(var_input) then ("--input " +  '"' + var_input + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""}
  >>>
  parameter_meta {
    var_input: "Tab separeted text file such that one line has two reads which are paired (i.e. generated via 'paste - - - - - - - -')."
    var_output: "Tab separeted text file such that one line has two reads which are paired (i.e. generated via 'paste - - - - - - - -')."
    length: "The minimum length of a read. All reads shorter than this will be removed. Default is 25."
  }
}