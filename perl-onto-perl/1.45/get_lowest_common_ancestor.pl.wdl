version 1.0

task GetLowestCommonAncestorpl {
  input {
    Boolean? obo_input_file
    Boolean? a
    Boolean? b
    String usage
    String options
  }
  command <<<
    get_lowest_common_ancestor_pl \
      ~{usage} \
      ~{options} \
      ~{if (obo_input_file) then "-f" else ""} \
      ~{if (a) then "-a" else ""} \
      ~{if (b) then "-b" else ""}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
    a: "term 1 ID"
    b: "term 2 ID"
    usage: ": get_lowest_common_ancestor.pl [options]"
    options: ":"
  }
  output {
    File out_stdout = stdout()
  }
}