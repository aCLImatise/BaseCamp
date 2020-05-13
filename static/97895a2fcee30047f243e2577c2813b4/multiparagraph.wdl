version 1.0

task Multiparagraph.py {
  input {
    String bamBam
    String outputOutput
    String referenceReferenceSequence
    Boolean extendedExtendedOutput
    Int maxMaxEvents
    Int minMinLength
    String eventEventThreads
    String paragraphParagraphThreads
    Boolean keepKeepScratch
    String scratchScratchDir
    String paragraphParagraph
    String logLogFile
    Boolean verboseVerbose
    Boolean quietQuiet
  }
  command <<<
    multiparagraph.py \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(referenceReferenceSequence) then ("--reference-sequence " +  '"' + referenceReferenceSequence + '"') else ""} \
      ~{true="--extended-output" false="" extendedExtendedOutput} \
      ~{if defined(maxMaxEvents) then ("--max-events " +  '"' + maxMaxEvents + '"') else ""} \
      ~{if defined(minMinLength) then ("--min-length " +  '"' + minMinLength + '"') else ""} \
      ~{if defined(eventEventThreads) then ("--event-threads " +  '"' + eventEventThreads + '"') else ""} \
      ~{if defined(paragraphParagraphThreads) then ("--paragraph-threads " +  '"' + paragraphParagraphThreads + '"') else ""} \
      ~{true="--keep-scratch" false="" keepKeepScratch} \
      ~{if defined(scratchScratchDir) then ("--scratch-dir " +  '"' + scratchScratchDir + '"') else ""} \
      ~{if defined(paragraphParagraph) then ("--paragraph " +  '"' + paragraphParagraph + '"') else ""} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}