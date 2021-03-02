version 1.0

task ProphyleAssignmentpy {
  input {
    String? format_of_output
    String? measure_hhit_countcnormcoverage
    Boolean? annotate_assignments
    Boolean? use_lca_tie
    Boolean? use_lca_hits
    Boolean? configuration_json_dictionary
  }
  command <<<
    prophyle_assignment_py \
      ~{if defined(format_of_output) then ("-f " +  '"' + format_of_output + '"') else ""} \
      ~{if defined(measure_hhit_countcnormcoverage) then ("-m " +  '"' + measure_hhit_countcnormcoverage + '"') else ""} \
      ~{if (annotate_assignments) then "-A" else ""} \
      ~{if (use_lca_tie) then "-L" else ""} \
      ~{if (use_lca_hits) then "-X" else ""} \
      ~{if (configuration_json_dictionary) then "-c" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    format_of_output: "format of output [sam]"
    measure_hhit_countcnormcoverage: "measure: h1=hit count, c1=coverage, h2=norm.hit count,\\nc2=norm.coverage [h1]"
    annotate_assignments: "annotate assignments"
    use_lca_tie: "use LCA when tie (multiple assignments with the same\\nscore)"
    use_lca_hits: "use LCA for k-mers (multiple hits of a k-mer)"
    configuration_json_dictionary: "[STR [STR ...]]  configuration (a JSON dictionary)"
  }
  output {
    File out_stdout = stdout()
  }
}