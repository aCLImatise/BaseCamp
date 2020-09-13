version 1.0

task HiLineToofarfromrestrictionsite {
  input {
    Boolean? sort
    String var_output
  }
  command <<<
    HiLine too_far_from_restriction_site \
      ~{var_output} \
      ~{if (sort) then "--sort" else ""}
  >>>
  parameter_meta {
    sort: "/ --no-sort  Sort and index output. Default=sort"
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}