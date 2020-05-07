version 1.0

task PhylophlanDrawMetagenomic {
  input {
    String inputInput
    String mapMap
    String topTop
    String outputOutput
    String separatorSeparator
    String dpiDpi
    String fF
    Boolean verboseVerbose
  }
  command <<<
    phylophlan_draw_metagenomic \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(mapMap) then ("--map " +  '"' + mapMap + '"') else ""} \
      ~{if defined(topTop) then ("--top " +  '"' + topTop + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(separatorSeparator) then ("--separator " +  '"' + separatorSeparator + '"') else ""} \
      ~{if defined(dpiDpi) then ("--dpi " +  '"' + dpiDpi + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}