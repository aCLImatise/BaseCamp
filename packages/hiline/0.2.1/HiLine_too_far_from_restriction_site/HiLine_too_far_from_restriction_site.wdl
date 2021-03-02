version 1.0

task HiLineToofarfromrestrictionsite {
  input {
    Boolean? no_sort
    String var_output
  }
  command <<<
    HiLine too_far_from_restriction_site \
      ~{var_output} \
      ~{if (no_sort) then "--no-sort" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hiline:0.2.1--py38hc9558a2_0"
  }
  parameter_meta {
    no_sort: "Sort and index output. Default=sort"
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}