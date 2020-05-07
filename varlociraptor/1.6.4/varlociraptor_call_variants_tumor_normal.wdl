version 1.0

task VarlociraptorCallVariantsTumorNormal {
  input {
    String outputOutput
    Boolean purityPurity
    String tumorTumor
    String normalNormal
    String? 075075
  }
  command <<<
    varlociraptor call variants tumor-normal \
      ~{075075} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--purity" false="" purityPurity} \
      ~{if defined(tumorTumor) then ("--tumor " +  '"' + tumorTumor + '"') else ""} \
      ~{if defined(normalNormal) then ("--normal " +  '"' + normalNormal + '"') else ""}
  >>>
}