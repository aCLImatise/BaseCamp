version 1.0

task PhyluceAlignMoveAlignByConfFile {
  input {
    String confConf
    String alignmentsAlignments
    String outputOutput
    Array[String]+ sectionsSections
    Boolean oppositeOpposite
    String extensionExtension
  }
  command <<<
    phyluce_align_move_align_by_conf_file \
      ~{if defined(confConf) then ("--conf " +  '"' + confConf + '"') else ""} \
      ~{if defined(alignmentsAlignments) then ("--alignments " +  '"' + alignmentsAlignments + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(sectionsSections) then ("--sections " +  '"' + sectionsSections + '"') else ""} \
      ~{true="--opposite" false="" oppositeOpposite} \
      ~{if defined(extensionExtension) then ("--extension " +  '"' + extensionExtension + '"') else ""}
  >>>
}