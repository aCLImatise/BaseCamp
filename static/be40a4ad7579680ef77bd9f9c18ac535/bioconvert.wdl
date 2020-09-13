version 1.0

task Bioconvert {
  input {
    String? verbosity
    String? level
    Boolean? dependency_report
    Boolean? allow_indirect_conversion
    Boolean? conversion_graph
  }
  command <<<
    bioconvert \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(level) then ("--level " +  '"' + level + '"') else ""} \
      ~{if (dependency_report) then "--dependency-report" else ""} \
      ~{if (allow_indirect_conversion) then "--allow-indirect-conversion" else ""} \
      ~{if (conversion_graph) then "--conversion-graph" else ""}
  >>>
  parameter_meta {
    verbosity: "Set the outpout verbosity."
    level: "Set the outpout verbosity. Same as --verbosity"
    dependency_report: "Output all bioconvert dependencies in json and exit"
    allow_indirect_conversion: "Show all possible indirect conversions (labelled as\\nintermediate)"
    conversion_graph: "[{cytoscape,cytoscape-all}]"
  }
  output {
    File out_stdout = stdout()
  }
}