version 1.0

task ExpandFastq {
  input {
    Boolean? print_first_n
    Boolean? never_print_headers
    Boolean? always_print_headers
    String head
    File? var_file
  }
  command <<<
    expand_fastq \
      ~{head} \
      ~{var_file} \
      ~{if (print_first_n) then "-c" else ""} \
      ~{if (never_print_headers) then "-q" else ""} \
      ~{if (always_print_headers) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    print_first_n: "[-]N[kbm]    Print first N bytes"
    never_print_headers: "Never print headers"
    always_print_headers: "Always print headers"
    head: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}