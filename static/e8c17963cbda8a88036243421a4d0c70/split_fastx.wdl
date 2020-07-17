version 1.0

task SplitFastx.pyOutputDir {
  input {
    String? i
    String? o
    String? b
    String split_fast_x_do_tpy
  }
  command <<<
    split_fastx.py output_dir \
      ~{split_fast_x_do_tpy} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    o: ""
    b: ""
    split_fast_x_do_tpy: ""
  }
}