version 1.0

task JunctoolsCompare {
  input {
    Boolean useUseStrand
    String labelsLabels
    Boolean multiclassMulticlass
    String? referenceReference
    String? inputInput
  }
  command <<<
    junctools compare \
      ~{referenceReference} \
      ~{true="--use_strand" false="" useUseStrand} \
      ~{if defined(labelsLabels) then ("--labels " +  '"' + labelsLabels + '"') else ""} \
      ~{true="--multiclass" false="" multiclassMulticlass} \
      ~{inputInput}
  >>>
}