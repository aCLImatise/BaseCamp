version 1.0

task PhyluceAlignGetBedFromLastz {
  input {
    String lastLastZ
    String outputOutput
    String identityIdentity
    String continuityContinuity
    Boolean longLongFormat
    String confConf
    Array[String]+ sectionsSections
  }
  command <<<
    phyluce_align_get_bed_from_lastz \
      ~{if defined(lastLastZ) then ("--lastz " +  '"' + lastLastZ + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(identityIdentity) then ("--identity " +  '"' + identityIdentity + '"') else ""} \
      ~{if defined(continuityContinuity) then ("--continuity " +  '"' + continuityContinuity + '"') else ""} \
      ~{true="--long-format" false="" longLongFormat} \
      ~{if defined(confConf) then ("--conf " +  '"' + confConf + '"') else ""} \
      ~{if defined(sectionsSections) then ("--sections " +  '"' + sectionsSections + '"') else ""}
  >>>
}