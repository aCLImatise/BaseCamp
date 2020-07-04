version 1.0

task PipitsGetsamplelistfromfasta {
  input {
    String? i
    String? o
    String creates
    String var_3
    String sample
    String list
    File file
    String from
    String var_8
    String fast_a
    String sequences_dot
  }
  command <<<
    pipits_getsamplelistfromfasta \
      ~{creates} \
      ~{var_3} \
      ~{sample} \
      ~{list} \
      ~{file} \
      ~{from} \
      ~{var_8} \
      ~{fast_a} \
      ~{sequences_dot} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    i: "[REQUIRED]"
    o: "[REQUIRED]"
    creates: ""
    var_3: ""
    sample: ""
    list: ""
    file: ""
    from: ""
    var_8: ""
    fast_a: ""
    sequences_dot: ""
  }
}