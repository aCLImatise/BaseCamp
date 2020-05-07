version 1.0

task SvtoolsBedpetovcf {
  input {
    String bedBedPe
    String outputOutput
    String? bedBedPeToVcf
  }
  command <<<
    svtools bedpetovcf \
      ~{bedBedPeToVcf} \
      ~{if defined(bedBedPe) then ("--bedpe " +  '"' + bedBedPe + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}