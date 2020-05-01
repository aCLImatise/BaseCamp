version 1.0

task Eledef {
  input {
    String? eleEleDef
    String? seqSeqList
    String? mspMspFile
    String? methodMethod
    String? cutCutOff
  }
  command <<<
    eledef \
      ~{eleEleDef} \
      ~{seqSeqList} \
      ~{mspMspFile} \
      ~{methodMethod} \
      ~{cutCutOff}
  >>>
}