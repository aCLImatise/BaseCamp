version 1.0

task Harvesttools {
  input {
    String? i
    String? _filter_name
    String? var_2
    String? var_3
    String? var_4
    String? g
    String? a
    String? var_7
    Boolean? multifasta_alignment_output
    String? var_9
    String? var_10
    Boolean? midpoint_re_root
    String? o
    String? s
    Int? update_branch_values
    String? var_15
    String? var_16
    File? var_17
    File? var_18
    Boolean? quiet_mode
  }
  command <<<
    harvesttools \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(_filter_name) then ("-b " +  '"' + _filter_name + '"') else ""} \
      ~{if defined(var_2) then ("-B " +  '"' + var_2 + '"') else ""} \
      ~{if defined(var_3) then ("-f " +  '"' + var_3 + '"') else ""} \
      ~{if defined(var_4) then ("-F " +  '"' + var_4 + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(var_7) then ("-m " +  '"' + var_7 + '"') else ""} \
      ~{if (multifasta_alignment_output) then "-M" else ""} \
      ~{if defined(var_9) then ("-n " +  '"' + var_9 + '"') else ""} \
      ~{if defined(var_10) then ("-N " +  '"' + var_10 + '"') else ""} \
      ~{if (midpoint_re_root) then "--midpoint-reroot" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(s) then ("-S " +  '"' + s + '"') else ""} \
      ~{if defined(update_branch_values) then ("-u " +  '"' + update_branch_values + '"') else ""} \
      ~{if defined(var_15) then ("-v " +  '"' + var_15 + '"') else ""} \
      ~{if defined(var_16) then ("-V " +  '"' + var_16 + '"') else ""} \
      ~{if defined(var_17) then ("-x " +  '"' + var_17 + '"') else ""} \
      ~{if defined(var_18) then ("-X " +  '"' + var_18 + '"') else ""} \
      ~{if (quiet_mode) then "-q" else ""}
  >>>
  parameter_meta {
    i: ""
    _filter_name: ",<filter name>,\\\"<description>\\\""
    var_2: ""
    var_3: ""
    var_4: ""
    g: ""
    a: ""
    var_7: ""
    multifasta_alignment_output: "<multi-fasta alignment output (concatenated LCBs)>"
    var_9: ""
    var_10: ""
    midpoint_re_root: "(reroot the tree at its midpoint after loading)"
    o: ""
    s: ""
    update_branch_values: "(update the branch values to reflect genome length)"
    var_15: ""
    var_16: ""
    var_17: ""
    var_18: ""
    quiet_mode: "(quiet mode)"
  }
  output {
    File out_stdout = stdout()
    File out_var_18 = "${in_var_18}"
  }
}