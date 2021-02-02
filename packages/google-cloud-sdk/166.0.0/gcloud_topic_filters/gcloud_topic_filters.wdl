version 1.0

task GcloudTopicFilters {
  input {
    String? format
    Boolean? filter
    String logic_operator
    String terms
    String value_dot
  }
  command <<<
    gcloud topic filters \
      ~{logic_operator} \
      ~{terms} \
      ~{value_dot} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if (filter) then "--filter" else ""}
  >>>
  parameter_meta {
    format: "[ATTRIBUTES](PROJECTION) and --filter=EXPRESSION flags along"
    filter: "=\\\"createTime.date('%Y-%m-%d', Z)='2016-05-11'\\\""
    logic_operator: "Expressions containing both AND and OR must be parenthesized to\\ndisambiguate precedence.\\nNOT term-1\\nTrue if term-1 is False, otherwise False.\\nterm-1 AND term-2\\nTrue if both term-1 and term-2 are true.\\nterm-1 OR term-2\\nTrue if at least one of term-1 or term-2 is true.\\nterm-1 term-2\\nTrue if both term-1 and term-2 are true. Implicit conjunction has\\nlower precedence than OR."
    terms: "A term is a key operator value tuple, where key is a dotted name that\\nevaluates to the value of a resource attribute, and value may be:\\nnumber\\ninteger or floating point numeric constant\\nunquoted literal\\ncharacter sequence terminated by space, ( or )\\nquoted literal\\n\\\"...\\\" or '...' Most filter expressions need to be quoted in shell\\ncommands. If you use '...' shell quotes then use \\\"...\\\" filter\\nstring literal quotes and vice versa."
    value_dot: "EXAMPLES"
  }
  output {
    File out_stdout = stdout()
  }
}