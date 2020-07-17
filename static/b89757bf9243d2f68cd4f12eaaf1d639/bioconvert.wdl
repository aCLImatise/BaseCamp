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
      ~{true="--dependency-report" false="" dependency_report} \
      ~{true="--allow-indirect-conversion" false="" allow_indirect_conversion} \
      ~{true="--conversion-graph" false="" conversion_graph}
  >>>
  parameter_meta {
    verbosity: "Set the outpout verbosity."
    level: "Set the outpout verbosity. Same as --verbosity"
    dependency_report: "Output all bioconvert dependencies in json and exit"
    allow_indirect_conversion: "Show all possible indirect conversions (labelled as intermediate)"
    conversion_graph: "[{cytoscape,cytoscape-all}]"
  }
}