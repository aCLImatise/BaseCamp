version 1.0

task Vcfsort {
  input {
    Boolean? invalid_option_
    Boolean? print_first_n
    Boolean? never_print_headers
    Boolean? always_print_headers
    String cat
    String head
    File? var_file
  }
  command <<<
    vcfsort \
      ~{cat} \
      ~{head} \
      ~{var_file} \
      ~{if (invalid_option_) then "-1000" else ""} \
      ~{if (print_first_n) then "-c" else ""} \
      ~{if (never_print_headers) then "-q" else ""} \
      ~{if (always_print_headers) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1"
  }
  parameter_meta {
    invalid_option_: ": invalid option -- '-'"
    print_first_n: "[-]N[kbm]    Print first N bytes"
    never_print_headers: "Never print headers"
    always_print_headers: "Always print headers"
    cat: ""
    head: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}