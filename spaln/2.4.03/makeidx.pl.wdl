version 1.0

task Makeidxpl {
  input {
    Boolean? g
    String? d
    String? s
    Boolean? ian_p
    String fast_a_file
  }
  command <<<
    makeidx_pl \
      ~{fast_a_file} \
      ~{if (g) then "-g" else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if (ian_p) then "-ianp" else ""}
  >>>
  parameter_meta {
    g: ""
    d: ""
    s: ""
    ian_p: ""
    fast_a_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}