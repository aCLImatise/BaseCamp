version 1.0

task Bedpetovcf {
  input {
    String bedBedPe
    String outputOutput
  }
  command <<<
    bedpetovcf \
      ~{if defined(bedBedPe) then ("--bedpe " +  '"' + bedBedPe + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}