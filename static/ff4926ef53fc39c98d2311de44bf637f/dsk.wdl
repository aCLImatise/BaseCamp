version 1.0

task Dsk {
  input {
    Boolean? c
    Boolean? histo
    String? o
    Int? d
    Int? m
    Int? t
    String input_file
    String km_er_size
  }
  command <<<
    dsk \
      ~{input_file} \
      ~{km_er_size} \
      ~{if (c) then "-c" else ""} \
      ~{if (histo) then "-histo" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    c: ""
    histo: ""
    o: ""
    d: ""
    m: ""
    t: ""
    input_file: ""
    km_er_size: ""
  }
  output {
    File out_stdout = stdout()
  }
}