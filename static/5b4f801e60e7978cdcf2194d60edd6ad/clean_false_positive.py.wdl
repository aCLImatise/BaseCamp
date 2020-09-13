version 1.0

task CleanFalsePositivepy {
  input {
    String? var_input
    String? re_fte
    String? distance
    String? bed_tools
    String? var_output
    Boolean? v
  }
  command <<<
    clean_false_positive_py \
      ~{if defined(var_input) then ("--input " +  '"' + var_input + '"') else ""} \
      ~{if defined(re_fte) then ("--refte " +  '"' + re_fte + '"') else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(bed_tools) then ("--bedtools " +  '"' + bed_tools + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    var_input: ""
    re_fte: ""
    distance: ""
    bed_tools: ""
    var_output: ""
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}