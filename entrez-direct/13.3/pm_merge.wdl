version 1.0

task PmMerge {
  input {
    String? whole_name
    String? x_type
    String? exec
    String? exec_dir
    Boolean? h
    Boolean? l
    Boolean? p
    Boolean? o_level
    String? d
    String find
    File? path_dot_dot_dot
    String? expression
  }
  command <<<
    pm-merge \
      ~{find} \
      ~{path_dot_dot_dot} \
      ~{expression} \
      ~{if defined(whole_name) then ("-wholename " +  '"' + whole_name + '"') else ""} \
      ~{if defined(x_type) then ("-xtype " +  '"' + x_type + '"') else ""} \
      ~{if defined(exec) then ("-exec " +  '"' + exec + '"') else ""} \
      ~{if defined(exec_dir) then ("-execdir " +  '"' + exec_dir + '"') else ""} \
      ~{true="-H" false="" h} \
      ~{true="-L" false="" l} \
      ~{true="-P" false="" p} \
      ~{true="-Olevel" false="" o_level} \
      ~{if defined(d) then ("-D " +  '"' + d + '"') else ""}
  >>>
  parameter_meta {
    whole_name: "[bcwkMG] -true -type [bcdpflsD] -uid N"
    x_type: "[bcdpfls]      -context CONTEXT"
    exec: "; -exec COMMAND {} + -ok COMMAND ;"
    exec_dir: "; -execdir COMMAND {} + -okdir COMMAND ;"
    h: ""
    l: ""
    p: ""
    o_level: ""
    d: ""
    find: ""
    path_dot_dot_dot: ""
    expression: ""
  }
}