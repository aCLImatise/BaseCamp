version 1.0

task Cytoscape.sh {
  input {
    File sessionSession
    File networkNetwork
    File propsProps
    File vizVizMap
    File scriptScript
    String restRest
  }
  command <<<
    cytoscape.sh \
      ~{if defined(sessionSession) then ("--session " +  '"' + sessionSession + '"') else ""} \
      ~{if defined(networkNetwork) then ("--network " +  '"' + networkNetwork + '"') else ""} \
      ~{if defined(propsProps) then ("--props " +  '"' + propsProps + '"') else ""} \
      ~{if defined(vizVizMap) then ("--vizmap " +  '"' + vizVizMap + '"') else ""} \
      ~{if defined(scriptScript) then ("--script " +  '"' + scriptScript + '"') else ""} \
      ~{if defined(restRest) then ("--rest " +  '"' + restRest + '"') else ""}
  >>>
}