version 1.0

task RsemScanForPairedEndReadsOutput.bam {
  input {
    String? inputsInputsAm
    String? outputOutputBam
  }
  command <<<
    rsem-scan-for-paired-end-reads output.bam \
      ~{inputsInputsAm} \
      ~{outputOutputBam}
  >>>
}