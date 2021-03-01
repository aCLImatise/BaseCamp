version 1.0

task SplitFastxpyInputFastx {
  input {
    Int? b
    String? o
    String? i
    String split_fast_x_do_tpy
  }
  command <<<
    split_fastx_py input_fastx \
      ~{split_fast_x_do_tpy} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    b: ""
    o: ""
    i: ""
    split_fast_x_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}