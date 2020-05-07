version 1.0

task Palindrome {
  input {
    Boolean minMinPAllen
    Boolean maxpMaxpAllen
    Boolean gapGapLimit
    Boolean numNumMismatches
  }
  command <<<
    palindrome \
      ~{true="-minpallen" false="" minMinPAllen} \
      ~{true="-maxpallen" false="" maxpMaxpAllen} \
      ~{true="-gaplimit" false="" gapGapLimit} \
      ~{true="-nummismatches" false="" numNumMismatches}
  >>>
}