version 1.0

task RsemScanForPairedEndReadsInput.sam {
  input {
    String? outputOutputBam
  }
  command <<<
    rsem-scan-for-paired-end-reads input.sam \
      ~{outputOutputBam}
  >>>
}