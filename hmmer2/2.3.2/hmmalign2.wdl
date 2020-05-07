version 1.0

task Hmmalign2 {
  input {
    Boolean mM
    String oO
    Boolean qQ
    String inInFormat
    String mapMapAli
    Boolean oneOneLine
    String outOutFormat
    String withWithAli
    String? hmmHmmAlign
    String? hmmHmmFile
    String? sequenceSequenceFile
  }
  command <<<
    hmmalign2 \
      ~{hmmHmmAlign} \
      ~{true="-m" false="" mM} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-q" false="" qQ} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{if defined(mapMapAli) then ("--mapali " +  '"' + mapMapAli + '"') else ""} \
      ~{true="--oneline" false="" oneOneLine} \
      ~{if defined(outOutFormat) then ("--outformat " +  '"' + outOutFormat + '"') else ""} \
      ~{if defined(withWithAli) then ("--withali " +  '"' + withWithAli + '"') else ""} \
      ~{hmmHmmFile} \
      ~{sequenceSequenceFile}
  >>>
}