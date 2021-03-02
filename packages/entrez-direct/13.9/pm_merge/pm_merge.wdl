version 1.0

task Pmmerge {
  input {
    String? i_whole_name
    String? x_type
    String? fprintf
    File? f_print_zero
    String? exec_dir
    Boolean? o_level
    Boolean? p
    Boolean? l
    Boolean? h
    String find
  }
  command <<<
    pm_merge \
      ~{find} \
      ~{if defined(i_whole_name) then ("-iwholename " +  '"' + i_whole_name + '"') else ""} \
      ~{if defined(x_type) then ("-xtype " +  '"' + x_type + '"') else ""} \
      ~{if defined(fprintf) then ("-fprintf " +  '"' + fprintf + '"') else ""} \
      ~{if defined(f_print_zero) then ("-fprint0 " +  '"' + f_print_zero + '"') else ""} \
      ~{if defined(exec_dir) then ("-execdir " +  '"' + exec_dir + '"') else ""} \
      ~{if (o_level) then "-Olevel" else ""} \
      ~{if (p) then "-P" else ""} \
      ~{if (l) then "-L" else ""} \
      ~{if (h) then "-H" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1"
  }
  parameter_meta {
    i_whole_name: "[+-]MODE -regex PATTERN"
    x_type: "[bcdpfls]"
    fprintf: "FORMAT -print"
    f_print_zero: "; -exec COMMAND {} + -ok COMMAND ;"
    exec_dir: "; -execdir COMMAND {} + -okdir COMMAND ;"
    o_level: ""
    p: ""
    l: ""
    h: ""
    find: ""
  }
  output {
    File out_stdout = stdout()
  }
}