version 1.0

task ProphyleAssignment.py {
  input {
    String? format_of_output
    String? measure_hhit_cnormcoverage
    Boolean? annotate_assignments
    Boolean? use_lca_tie
    Boolean? use_lca_kmers
    Boolean? configuration_json_dictionary
  }
  command <<<
    prophyle_assignment.py \
      ~{if defined(format_of_output) then ("-f " +  '"' + format_of_output + '"') else ""} \
      ~{if defined(measure_hhit_cnormcoverage) then ("-m " +  '"' + measure_hhit_cnormcoverage + '"') else ""} \
      ~{true="-A" false="" annotate_assignments} \
      ~{true="-L" false="" use_lca_tie} \
      ~{true="-X" false="" use_lca_kmers} \
      ~{true="-c" false="" configuration_json_dictionary}
  >>>
  parameter_meta {
    format_of_output: "format of output [sam]"
    measure_hhit_cnormcoverage: "measure: h1=hit count, c1=coverage, h2=norm.hit count, c2=norm.coverage [h1]"
    annotate_assignments: "annotate assignments"
    use_lca_tie: "use LCA when tie (multiple assignments with the same score)"
    use_lca_kmers: "use LCA for k-mers (multiple hits of a k-mer)"
    configuration_json_dictionary: "[STR [STR ...]]  configuration (a JSON dictionary)"
  }
}