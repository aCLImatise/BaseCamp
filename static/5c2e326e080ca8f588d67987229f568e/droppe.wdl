version 1.0

task Droppe.py {
  input {
    String? var_input
    String? var_output
    String? keep
    String? info
  }
  command <<<
    droppe.py \
      ~{if defined(var_input) then ("--input " +  '"' + var_input + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if defined(keep) then ("--keep " +  '"' + keep + '"') else ""} \
      ~{if defined(info) then ("--info " +  '"' + info + '"') else ""}
  >>>
  parameter_meta {
    var_input: "Tab separeted text file such that one line has two reads which are paired (i.e. generated via 'paste - - - -')."
    var_output: "Tab separeted text file such that one line has two reads which are paired (i.e. generated via 'paste - - - -')."
    keep: "Reads ids that should not be removed. Default is none."
    info: "Counts of Reads that where removed. Default is none."
  }
}