version 1.0

task AssignGenomeAnnotation {
  input {
    File annAnn
    File statsStats
  }
  command <<<
    assignGenomeAnnotation \
      ~{if defined(annAnn) then ("-ann " +  '"' + annAnn + '"') else ""} \
      ~{if defined(statsStats) then ("-stats " +  '"' + statsStats + '"') else ""}
  >>>
}