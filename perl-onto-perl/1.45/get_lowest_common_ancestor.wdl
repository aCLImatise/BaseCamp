version 1.0

task GetLowestCommonAncestor.pl {
  input {
    Boolean? obo_input_file
    Boolean? a
    Boolean? b
  }
  command <<<
    get_lowest_common_ancestor.pl \
      ~{true="-f" false="" obo_input_file} \
      ~{true="-a" false="" a} \
      ~{true="-b" false="" b}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
    a: "term 1 ID"
    b: "term 2 ID"
  }
}