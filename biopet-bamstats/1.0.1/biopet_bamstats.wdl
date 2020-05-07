version 1.0

task BiopetBamstats {
  input {
    String? bamBamStats
    String? toolToolName
    String? toolTool
    String? argsArgs
  }
  command <<<
    biopet-bamstats \
      ~{bamBamStats} \
      ~{toolToolName} \
      ~{toolTool} \
      ~{argsArgs}
  >>>
}