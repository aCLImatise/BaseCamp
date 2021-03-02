version 1.0

task Rename {
  input {
    Boolean? man
    Boolean? null
    String? interactive
    Boolean? glob
    String? lower_case
    String? subst_all
    Boolean? remove_extension
    Boolean? v
    Boolean? var_8
    Boolean? var_9
    Boolean? stdin
    Boolean? p
    Boolean? var_12
    Boolean? var_13
    Boolean? m
    Boolean? l
    Boolean? k
    String switches
    String transforms
    String? switches_vertical_line_transforms
  }
  command <<<
    rename \
      ~{switches} \
      ~{transforms} \
      ~{switches_vertical_line_transforms} \
      ~{if (man) then "--man" else ""} \
      ~{if (null) then "--null" else ""} \
      ~{if defined(interactive) then ("--interactive " +  '"' + interactive + '"') else ""} \
      ~{if (glob) then "--glob" else ""} \
      ~{if defined(lower_case) then ("--lower-case " +  '"' + lower_case + '"') else ""} \
      ~{if defined(subst_all) then ("--subst-all " +  '"' + subst_all + '"') else ""} \
      ~{if (remove_extension) then "--remove-extension" else ""} \
      ~{if (v) then "-v" else ""} \
      ~{if (var_8) then "-T" else ""} \
      ~{if (var_9) then "-t" else ""} \
      ~{if (stdin) then "--stdin" else ""} \
      ~{if (p) then "-p" else ""} \
      ~{if (var_12) then "-N" else ""} \
      ~{if (var_13) then "-n" else ""} \
      ~{if (m) then "-M" else ""} \
      ~{if (l) then "-l" else ""} \
      ~{if (k) then "-k" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    man: "(read the full manual)"
    null: "(when reading from STDIN)"
    interactive: "(proceed or prompt when overwriting)"
    glob: "(expand \\\"*\\\" etc. in filenames, useful in Windows\\x{2122} CMD.EXE)"
    lower_case: "to"
    subst_all: "to"
    remove_extension: "(see manual)"
    v: ""
    var_8: ""
    var_9: ""
    stdin: ""
    p: ""
    var_12: ""
    var_13: ""
    m: ""
    l: ""
    k: ""
    switches: ""
    transforms: ""
    switches_vertical_line_transforms: ""
  }
  output {
    File out_stdout = stdout()
  }
}