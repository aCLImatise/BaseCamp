version 1.0

task PipitsGetsamplelistfromfasta {
  input {
    Boolean? o
    File? i
    String creates
    String a
    String sample
    String list
    File var_file
    String from
    String fast_a
    String sequences_dot
  }
  command <<<
    pipits_getsamplelistfromfasta \
      ~{creates} \
      ~{a} \
      ~{sample} \
      ~{list} \
      ~{var_file} \
      ~{from} \
      ~{fast_a} \
      ~{sequences_dot} \
      ~{if (o) then "-o" else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    o: ""
    i: ""
    creates: ""
    a: ""
    sample: ""
    list: ""
    var_file: ""
    from: ""
    fast_a: ""
    sequences_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}