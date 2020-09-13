version 1.0

task Reagopy {
  input {
    Float? o
    Float? e
    Int? t
    Int? b
    Int? l
    File filename_dot_fast_a
    String output_dir
  }
  command <<<
    reago_py \
      ~{filename_dot_fast_a} \
      ~{output_dir} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""}
  >>>
  parameter_meta {
    o: ", default 0.8"
    e: ", default 0.05"
    t: ", default 30"
    b: ", default 10"
    l: ""
    filename_dot_fast_a: ""
    output_dir: ""
  }
  output {
    File out_stdout = stdout()
  }
}