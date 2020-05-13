version 1.0

task VcfPhasedJoin {
  input {
    String minMinJoinQuality
    File listList
    File outputOutput
    String minMinPq
    String? optionsOptions
    String? aAVcf
    String? bBVcf
    String? cvCvCf
  }
  command <<<
    vcf-phased-join \
      ~{optionsOptions} \
      ~{if defined(minMinJoinQuality) then ("--min-join-quality " +  '"' + minMinJoinQuality + '"') else ""} \
      ~{if defined(listList) then ("--list " +  '"' + listList + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(minMinPq) then ("--min-PQ " +  '"' + minMinPq + '"') else ""} \
      ~{aAVcf} \
      ~{bBVcf} \
      ~{cvCvCf}
  >>>
}