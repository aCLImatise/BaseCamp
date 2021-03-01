version 1.0

task Palindrome {
  input {
    Boolean? min_p_allen
    Boolean? maxp_allen
    Boolean? gap_limit
    Boolean? num_mismatches
  }
  command <<<
    palindrome \
      ~{if (min_p_allen) then "-minpallen" else ""} \
      ~{if (maxp_allen) then "-maxpallen" else ""} \
      ~{if (gap_limit) then "-gaplimit" else ""} \
      ~{if (num_mismatches) then "-nummismatches" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    min_p_allen: "integer    [10] Enter minimum length of palindrome\\n(Integer 1 or more)"
    maxp_allen: "integer    [100] Enter maximum length of palindrome\\n(Any integer value)"
    gap_limit: "integer    [100] Enter maximum gap between repeated\\nregions (Integer 0 or more)"
    num_mismatches: "integer    [0] Number of mismatches allowed (Positive\\ninteger)"
  }
  output {
    File out_stdout = stdout()
  }
}