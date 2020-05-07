version 1.0

task NanoPlot {
  input {
    String threadsThreads
    Boolean verboseVerbose
    Boolean storeStore
    Boolean rawRaw
    Boolean hugeHuge
    String outdirOutdir
    String prefixPrefix
    String maxlengthMaxlength
    String minlengthMinlength
    Boolean dropDropOutliers
    String downDownSample
    Boolean logLogLength
    Boolean percentPercentQual
    Boolean aALength
    String minMinQual
    String runtimeRuntimeUntil
    Boolean readReadType
    Boolean barcodedBarcoded
    String colorColor
    String colormapColormap
    String formatFormat
    Boolean plotsPlots
    Boolean listListColors
    Boolean listListColormaps
    Boolean noNoN50
    Boolean n50N50
    String titleTitle
    String fontFontScale
    String dpiDpi
    Boolean hideHideStats
    Array[File]+ fastFastQ
    Array[File]+ fastFastA
    Array[File]+ fastFastQRich
    Array[File]+ fastFastQMinimal
    Array[File]+ summarySummary
    Array[File]+ bamBam
    Array[File]+ ubUbAm
    Array[File]+ cramCram
    String picklePickle
  }
  command <<<
    NanoPlot \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--store" false="" storeStore} \
      ~{true="--raw" false="" rawRaw} \
      ~{true="--huge" false="" hugeHuge} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(maxlengthMaxlength) then ("--maxlength " +  '"' + maxlengthMaxlength + '"') else ""} \
      ~{if defined(minlengthMinlength) then ("--minlength " +  '"' + minlengthMinlength + '"') else ""} \
      ~{true="--drop_outliers" false="" dropDropOutliers} \
      ~{if defined(downDownSample) then ("--downsample " +  '"' + downDownSample + '"') else ""} \
      ~{true="--loglength" false="" logLogLength} \
      ~{true="--percentqual" false="" percentPercentQual} \
      ~{true="--alength" false="" aALength} \
      ~{if defined(minMinQual) then ("--minqual " +  '"' + minMinQual + '"') else ""} \
      ~{if defined(runtimeRuntimeUntil) then ("--runtime_until " +  '"' + runtimeRuntimeUntil + '"') else ""} \
      ~{true="--readtype" false="" readReadType} \
      ~{true="--barcoded" false="" barcodedBarcoded} \
      ~{if defined(colorColor) then ("--color " +  '"' + colorColor + '"') else ""} \
      ~{if defined(colormapColormap) then ("--colormap " +  '"' + colormapColormap + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{true="--plots" false="" plotsPlots} \
      ~{true="--listcolors" false="" listListColors} \
      ~{true="--listcolormaps" false="" listListColormaps} \
      ~{true="--no-N50" false="" noNoN50} \
      ~{true="--N50" false="" n50N50} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{if defined(fontFontScale) then ("--font_scale " +  '"' + fontFontScale + '"') else ""} \
      ~{if defined(dpiDpi) then ("--dpi " +  '"' + dpiDpi + '"') else ""} \
      ~{true="--hide_stats" false="" hideHideStats} \
      ~{if defined(fastFastQ) then ("--fastq " +  '"' + fastFastQ + '"') else ""} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(fastFastQRich) then ("--fastq_rich " +  '"' + fastFastQRich + '"') else ""} \
      ~{if defined(fastFastQMinimal) then ("--fastq_minimal " +  '"' + fastFastQMinimal + '"') else ""} \
      ~{if defined(summarySummary) then ("--summary " +  '"' + summarySummary + '"') else ""} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(ubUbAm) then ("--ubam " +  '"' + ubUbAm + '"') else ""} \
      ~{if defined(cramCram) then ("--cram " +  '"' + cramCram + '"') else ""} \
      ~{if defined(picklePickle) then ("--pickle " +  '"' + picklePickle + '"') else ""}
  >>>
}