version 1.0

task FastxEndsTabpyInputFastx {
  input {
    String? n
    String? i
    String fast_x_ends_tab_do_tpy
  }
  command <<<
    fastx_ends_tab_py input_fastx \
      ~{fast_x_ends_tab_do_tpy} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0"
  }
  parameter_meta {
    n: ""
    i: ""
    fast_x_ends_tab_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}