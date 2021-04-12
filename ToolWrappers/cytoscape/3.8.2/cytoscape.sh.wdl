version 1.0

task Cytoscapesh {
  input {
    File? session
    File? network
    File? props
    File? viz_map
    File? script
    String? rest
    String cytoscape_dot
  }
  command <<<
    cytoscape_sh \
      ~{cytoscape_dot} \
      ~{if defined(session) then ("--session " +  '"' + session + '"') else ""} \
      ~{if defined(network) then ("--network " +  '"' + network + '"') else ""} \
      ~{if defined(props) then ("--props " +  '"' + props + '"') else ""} \
      ~{if defined(viz_map) then ("--vizmap " +  '"' + viz_map + '"') else ""} \
      ~{if defined(script) then ("--script " +  '"' + script + '"') else ""} \
      ~{if defined(rest) then ("--rest " +  '"' + rest + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cytoscape:3.8.2--hadc2ddb_0"
  }
  parameter_meta {
    session: "Load a cytoscape session (.cys) file."
    network: "Load a network file (any format)."
    props: "Load cytoscape properties file (Java properties\\nformat) or individual property: -P name=value."
    viz_map: "Load vizmap properties file (Cytoscape VizMap\\nformat)."
    script: "Execute commands from script file."
    rest: "Start a rest service."
    cytoscape_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}