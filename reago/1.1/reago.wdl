version 1.0

task Reago.py {
  input {
    String? l
    File filename_dot_fast_a
    String output_dir
  }
  command <<<
    reago.py \
      ~{filename_dot_fast_a} \
      ~{output_dir} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""}
  >>>
  parameter_meta {
    l: ""
    filename_dot_fast_a: ""
    output_dir: ""
  }
}