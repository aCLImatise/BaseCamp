version 1.0

task FastxGreppyOutputFastx {
  input {
    String? n
    String? o
    String? i
    String fast_x_grep_do_tpy
  }
  command <<<
    fastx_grep_py output_fastx \
      ~{fast_x_grep_do_tpy} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    n: ""
    o: ""
    i: ""
    fast_x_grep_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}