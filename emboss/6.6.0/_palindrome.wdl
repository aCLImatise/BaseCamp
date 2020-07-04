version 1.0

task _palindrome {
  input {
    Boolean? min_p_allen
    Boolean? maxp_allen
    Boolean? gap_limit
    Boolean? num_mismatches
  }
  command <<<
    _palindrome \
      ~{true="-minpallen" false="" min_p_allen} \
      ~{true="-maxpallen" false="" maxp_allen} \
      ~{true="-gaplimit" false="" gap_limit} \
      ~{true="-nummismatches" false="" num_mismatches}
  >>>
  parameter_meta {
    min_p_allen: "integer    [10] Enter minimum length of palindrome (Integer 1 or more)"
    maxp_allen: "integer    [100] Enter maximum length of palindrome (Any integer value)"
    gap_limit: "integer    [100] Enter maximum gap between repeated regions (Integer 0 or more)"
    num_mismatches: "integer    [0] Number of mismatches allowed (Positive integer)"
  }
}