version 1.0

task GdtoolsGD2GVF {
  input {
    String referenceReference
    String outputOutput
    Boolean snvSnvOnly
  }
  command <<<
    gdtools GD2GVF \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--snv-only" false="" snvSnvOnly}
  >>>
}