version 1.0

task AddVariants.pyGraph {
  input {
    String variantsVariants
    Boolean verboseVerbose
    String? graphGraph
    String? outputOutput
  }
  command <<<
    addVariants.py graph \
      ~{graphGraph} \
      ~{if defined(variantsVariants) then ("--variants " +  '"' + variantsVariants + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{outputOutput}
  >>>
}