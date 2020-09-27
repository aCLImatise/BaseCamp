version 1.0

task PipitsUc2otutable {
  input {
    File? i
    String? o
    String? l
    String reads
    String and
    String writes
    String each
    String entry
    String var_as
    String a
    String single
    File file_dot
  }
  command <<<
    pipits_uc2otutable \
      ~{reads} \
      ~{and} \
      ~{writes} \
      ~{each} \
      ~{entry} \
      ~{var_as} \
      ~{a} \
      ~{single} \
      ~{file_dot} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""}
  >>>
  parameter_meta {
    i: "[REQUIRED]"
    o: "[REQUIRED]"
    l: "[REQUIRED]"
    reads: ""
    and: ""
    writes: ""
    each: ""
    entry: ""
    var_as: ""
    a: ""
    single: ""
    file_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}