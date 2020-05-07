version 1.0

task ScHicDemultiplex {
  input {
    String fastFastQ
    String barcodeBarcodeFile
    String srrSrrToSampleFile
    Directory outputOutputFolder
    String threadsThreads
    String bufferBufferSize
  }
  command <<<
    scHicDemultiplex \
      ~{if defined(fastFastQ) then ("--fastq " +  '"' + fastFastQ + '"') else ""} \
      ~{if defined(barcodeBarcodeFile) then ("--barcodeFile " +  '"' + barcodeBarcodeFile + '"') else ""} \
      ~{if defined(srrSrrToSampleFile) then ("--srrToSampleFile " +  '"' + srrSrrToSampleFile + '"') else ""} \
      ~{if defined(outputOutputFolder) then ("--outputFolder " +  '"' + outputOutputFolder + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(bufferBufferSize) then ("--bufferSize " +  '"' + bufferBufferSize + '"') else ""}
  >>>
}