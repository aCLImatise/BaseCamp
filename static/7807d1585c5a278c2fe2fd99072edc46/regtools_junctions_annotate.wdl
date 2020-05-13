version 1.0

task RegtoolsJunctionsAnnotate {
  input {
    String sS
    File oO
    String? junctionsJunctionsBed
    String? reReFfa
    String? annotationsAnnotationsGtf
  }
  command <<<
    regtools junctions annotate \
      ~{junctionsJunctionsBed} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{reReFfa} \
      ~{annotationsAnnotationsGtf}
  >>>
}