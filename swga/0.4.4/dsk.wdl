version 1.0

task Dsk {
  input {
    Int? t
    Int? m
    Int? d
    String? o
    Boolean? histo
    Boolean? c
    Boolean? b
    String input_file
    String km_er_size
  }
  command <<<
    dsk \
      ~{input_file} \
      ~{km_er_size} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{true="-histo" false="" histo} \
      ~{true="-c" false="" c} \
      ~{true="-b" false="" b}
  >>>
  parameter_meta {
    t: ""
    m: ""
    d: ""
    o: ""
    histo: ""
    c: ""
    b: ""
    input_file: ""
    km_er_size: ""
  }
}