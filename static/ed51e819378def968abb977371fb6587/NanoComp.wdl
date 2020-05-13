version 1.0

task NanoComp {
  input {
    String threadsThreads
    String outdirOutdir
    String prefixPrefix
    Boolean verboseVerbose
    Boolean rawRaw
    Boolean storeStore
    Boolean readReadType
    String maxlengthMaxlength
    String minlengthMinlength
    Boolean barcodedBarcoded
    String splitSplitRuns
    String formatFormat
    Array[String]+ namesNames
    Array[String]+ colorsColors
    String plotPlot
    String titleTitle
    String dpiDpi
    Array[File]+ fastFastA
    Array[File]+ fastFastQ
    Array[File]+ summarySummary
    Array[File]+ bamBam
    Array[File]+ ubUbAm
    Array[File]+ cramCram
  }
  command <<<
    NanoComp \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--raw" false="" rawRaw} \
      ~{true="--store" false="" storeStore} \
      ~{true="--readtype" false="" readReadType} \
      ~{if defined(maxlengthMaxlength) then ("--maxlength " +  '"' + maxlengthMaxlength + '"') else ""} \
      ~{if defined(minlengthMinlength) then ("--minlength " +  '"' + minlengthMinlength + '"') else ""} \
      ~{true="--barcoded" false="" barcodedBarcoded} \
      ~{if defined(splitSplitRuns) then ("--split_runs " +  '"' + splitSplitRuns + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(namesNames) then ("--names " +  '"' + namesNames + '"') else ""} \
      ~{if defined(colorsColors) then ("--colors " +  '"' + colorsColors + '"') else ""} \
      ~{if defined(plotPlot) then ("--plot " +  '"' + plotPlot + '"') else ""} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{if defined(dpiDpi) then ("--dpi " +  '"' + dpiDpi + '"') else ""} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(fastFastQ) then ("--fastq " +  '"' + fastFastQ + '"') else ""} \
      ~{if defined(summarySummary) then ("--summary " +  '"' + summarySummary + '"') else ""} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(ubUbAm) then ("--ubam " +  '"' + ubUbAm + '"') else ""} \
      ~{if defined(cramCram) then ("--cram " +  '"' + cramCram + '"') else ""}
  >>>
}