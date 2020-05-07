version 1.0

task ProtectionScore.pyOUTPUTFILE {
  input {
    String? footprintFootprintFile
    String? mMPbsFile
    String? dnaseDnaseFile
    String? genomeGenomeFile
    String? outputOutputFile
  }
  command <<<
    protectionScore.py OUTPUT_FILE \
      ~{footprintFootprintFile} \
      ~{mMPbsFile} \
      ~{dnaseDnaseFile} \
      ~{genomeGenomeFile} \
      ~{outputOutputFile}
  >>>
}