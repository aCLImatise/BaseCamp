version 1.0

task MageckCount {
  input {
    String listListSeq
    Array[String]+ fastFastQ
    String countCountTable
    String normNormMethod
    String controlControlSgRna
    String controlControlGene
    String sampleSampleLabel
    String outputOutputPrefix
    Boolean unmappedUnmappedToFile
    Boolean keepKeepTmp
    Boolean testTestRun
    Array[String]+ fastFastQ2
    String countCountPair
    String trimTrim5
    String sgSgRnaLen
    Boolean countCountN
    Boolean reverseReverseComplement
    Boolean pdfPdfReport
    String day0Day0Label
    String gmtGmtFile
  }
  command <<<
    mageck count \
      ~{if defined(listListSeq) then ("--list-seq " +  '"' + listListSeq + '"') else ""} \
      ~{if defined(fastFastQ) then ("--fastq " +  '"' + fastFastQ + '"') else ""} \
      ~{if defined(countCountTable) then ("--count-table " +  '"' + countCountTable + '"') else ""} \
      ~{if defined(normNormMethod) then ("--norm-method " +  '"' + normNormMethod + '"') else ""} \
      ~{if defined(controlControlSgRna) then ("--control-sgrna " +  '"' + controlControlSgRna + '"') else ""} \
      ~{if defined(controlControlGene) then ("--control-gene " +  '"' + controlControlGene + '"') else ""} \
      ~{if defined(sampleSampleLabel) then ("--sample-label " +  '"' + sampleSampleLabel + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output-prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{true="--unmapped-to-file" false="" unmappedUnmappedToFile} \
      ~{true="--keep-tmp" false="" keepKeepTmp} \
      ~{true="--test-run" false="" testTestRun} \
      ~{if defined(fastFastQ2) then ("--fastq-2 " +  '"' + fastFastQ2 + '"') else ""} \
      ~{if defined(countCountPair) then ("--count-pair " +  '"' + countCountPair + '"') else ""} \
      ~{if defined(trimTrim5) then ("--trim-5 " +  '"' + trimTrim5 + '"') else ""} \
      ~{if defined(sgSgRnaLen) then ("--sgrna-len " +  '"' + sgSgRnaLen + '"') else ""} \
      ~{true="--count-n" false="" countCountN} \
      ~{true="--reverse-complement" false="" reverseReverseComplement} \
      ~{true="--pdf-report" false="" pdfPdfReport} \
      ~{if defined(day0Day0Label) then ("--day0-label " +  '"' + day0Day0Label + '"') else ""} \
      ~{if defined(gmtGmtFile) then ("--gmt-file " +  '"' + gmtGmtFile + '"') else ""}
  >>>
}