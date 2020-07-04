version 1.0

task FastxGrep.pyOutputFastx {
  input {
    String? i
    String? o
    String? n
    String fast_x_grep_do_tpy
  }
  command <<<
    fastx_grep.py output_fastx \
      ~{fast_x_grep_do_tpy} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    o: ""
    n: ""
    fast_x_grep_do_tpy: ""
  }
}