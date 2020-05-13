version 1.0

task PlanemoNormalize {
  input {
    Boolean expandExpandMacros
    Boolean skipSkipReorder
    Boolean skipSkipReIndent
  }
  command <<<
    planemo normalize \
      ~{true="--expand_macros" false="" expandExpandMacros} \
      ~{true="--skip_reorder" false="" skipSkipReorder} \
      ~{true="--skip_reindent" false="" skipSkipReIndent}
  >>>
}