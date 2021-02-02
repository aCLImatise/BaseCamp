version 1.0

task Glistcompare {
  input {
    Boolean? union
    Boolean? intersection
    Boolean? difference
    Boolean? double_difference
    Boolean? diff_union
    Boolean? mismatch
    Int? cut_off
    String? output_name
    Int? rule
    Int? subset
    Boolean? count_only
    Boolean? disable_scouts
    Boolean? increase_debug_level
    Int input_list_one
    Int? input_list_two_dot_dot_dot
    String method
  }
  command <<<
    glistcompare \
      ~{input_list_one} \
      ~{input_list_two_dot_dot_dot} \
      ~{method} \
      ~{if (union) then "--union" else ""} \
      ~{if (intersection) then "--intersection" else ""} \
      ~{if (difference) then "--difference" else ""} \
      ~{if (double_difference) then "--double_difference" else ""} \
      ~{if (diff_union) then "--diff_union" else ""} \
      ~{if (mismatch) then "--mismatch" else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(output_name) then ("--outputname " +  '"' + output_name + '"') else ""} \
      ~{if defined(rule) then ("--rule " +  '"' + rule + '"') else ""} \
      ~{if defined(subset) then ("--subset " +  '"' + subset + '"') else ""} \
      ~{if (count_only) then "--count_only" else ""} \
      ~{if (disable_scouts) then "--disable_scouts" else ""} \
      ~{if (increase_debug_level) then "-D" else ""}
  >>>
  parameter_meta {
    union: "- union of input lists"
    intersection: "- intersection of input lists"
    difference: "- difference of input lists"
    double_difference: "- double difference of input lists"
    diff_union: "- subtract first list from the second and finds difference"
    mismatch: "NUMBER - specify number of mismatches (default 0, can be used with -diff and -ddiff)"
    cut_off: "- specify frequency cut-off (default 1)"
    output_name: "- specify output name (default \\\"out\\\")"
    rule: "- specify rule how final frequencies are calculated (default, add, subtract, min, max, first, second, 1, 2)\\nNOTE: rules min, subtract, first and second can only be used with finding the intersection."
    subset: "SIZE - make subset with given method (rand, rand_unique)"
    count_only: "- output count of k-mers instead of k-mers themself"
    disable_scouts: "- disable list read-ahead in background thread"
    increase_debug_level: "- increase debug level"
    input_list_one: ""
    input_list_two_dot_dot_dot: ""
    method: ""
  }
  output {
    File out_stdout = stdout()
  }
}