version 1.0

task _palindrome {
  input {
    Boolean minMinPAllen
    Boolean maxpMaxpAllen
    Boolean gapGapLimit
    Boolean numNumMismatches
  }
  command <<<
    _palindrome \
      ~{true="-minpallen" false="" minMinPAllen} \
      ~{true="-maxpallen" false="" maxpMaxpAllen} \
      ~{true="-gaplimit" false="" gapGapLimit} \
      ~{true="-nummismatches" false="" numNumMismatches}
  >>>
}