version 1.0

task NanoStat {
  input {
    String outdirOutdir
    String prefixPrefix
    String nameName
    String threadsThreads
    Boolean barcodedBarcoded
    Boolean readReadType
    Array[File]+ fastFastQ
    Array[File]+ fastFastA
    Array[File]+ summarySummary
    Array[File]+ bamBam
    Array[File]+ ubUbAm
    Array[File]+ cramCram
  }
  command <<<
    NanoStat \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--barcoded" false="" barcodedBarcoded} \
      ~{true="--readtype" false="" readReadType} \
      ~{if defined(fastFastQ) then ("--fastq " +  '"' + fastFastQ + '"') else ""} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(summarySummary) then ("--summary " +  '"' + summarySummary + '"') else ""} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(ubUbAm) then ("--ubam " +  '"' + ubUbAm + '"') else ""} \
      ~{if defined(cramCram) then ("--cram " +  '"' + cramCram + '"') else ""}
  >>>
}