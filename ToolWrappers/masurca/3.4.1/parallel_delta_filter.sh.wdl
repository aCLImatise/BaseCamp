version 1.0

task ParallelDeltafiltersh {
  input {
    Boolean? print_first_n
    Boolean? never_print_headers
    Boolean? always_print_headers
    String head
    File? file
  }
  command <<<
    parallel_delta_filter_sh \
      ~{head} \
      ~{file} \
      ~{if (print_first_n) then "-c" else ""} \
      ~{if (never_print_headers) then "-q" else ""} \
      ~{if (always_print_headers) then "-v" else ""}
  >>>
  parameter_meta {
    print_first_n: "[-]N[kbm]    Print first N bytes"
    never_print_headers: "Never print headers"
    always_print_headers: "Always print headers"
    head: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}