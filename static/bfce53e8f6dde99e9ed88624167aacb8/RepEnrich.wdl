version 1.0

task RepEnrich.py {
  input {
    String pairedPairedEnd
    String collapseCollapseRepeat
    String thresholdThreshold
    String toleranceTolerance
    String fastqfile2Fastqfile2
    String cpusCpus
    String allAllCountMethod
    String isIsBed
    String? annotationAnnotationFile
    String? outputOutputFolder
    String? outputOutputPrefix
    String? setupSetupFolder
    String? fastFastQFile
    String? alignmentAlignmentBam
  }
  command <<<
    RepEnrich.py \
      ~{annotationAnnotationFile} \
      ~{if defined(pairedPairedEnd) then ("--pairedend " +  '"' + pairedPairedEnd + '"') else ""} \
      ~{if defined(collapseCollapseRepeat) then ("--collapserepeat " +  '"' + collapseCollapseRepeat + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(toleranceTolerance) then ("--tolerance " +  '"' + toleranceTolerance + '"') else ""} \
      ~{if defined(fastqfile2Fastqfile2) then ("--fastqfile2 " +  '"' + fastqfile2Fastqfile2 + '"') else ""} \
      ~{if defined(cpusCpus) then ("--cpus " +  '"' + cpusCpus + '"') else ""} \
      ~{if defined(allAllCountMethod) then ("--allcountmethod " +  '"' + allAllCountMethod + '"') else ""} \
      ~{if defined(isIsBed) then ("--is_bed " +  '"' + isIsBed + '"') else ""} \
      ~{outputOutputFolder} \
      ~{outputOutputPrefix} \
      ~{setupSetupFolder} \
      ~{fastFastQFile} \
      ~{alignmentAlignmentBam}
  >>>
}