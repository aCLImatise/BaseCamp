version 1.0

task UVP {
  input {
    String fastFastQ
    String referenceReference
    String nameName
    String fastq2Fastq2
    String outdirOutdir
    Boolean keepKeepFiles
    Boolean bwaBwa
    Boolean allAll
    Boolean gGAtk
    Boolean samSamTools
    Boolean annotateAnnotate
    String threadsThreads
    String krakenKrakenDb
    String configConfig
    Boolean verboseVerbose
  }
  command <<<
    UVP \
      ~{if defined(fastFastQ) then ("--fastq " +  '"' + fastFastQ + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(fastq2Fastq2) then ("--fastq2 " +  '"' + fastq2Fastq2 + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{true="--keepfiles" false="" keepKeepFiles} \
      ~{true="--bwa" false="" bwaBwa} \
      ~{true="--all" false="" allAll} \
      ~{true="--gatk" false="" gGAtk} \
      ~{true="--samtools" false="" samSamTools} \
      ~{true="--annotate" false="" annotateAnnotate} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(krakenKrakenDb) then ("--krakendb " +  '"' + krakenKrakenDb + '"') else ""} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}