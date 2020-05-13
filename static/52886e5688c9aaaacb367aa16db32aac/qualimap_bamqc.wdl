version 1.0

task QualimapBamqc {
  input {
    String bamBam
    Boolean paintPaintChromosomeLimits
    String genomeGenomeGcDistr
    String featureFeatureFile
    String hmHm
    Boolean collectCollectOverlapPairs
    String nrNr
    String ntNt
    String nwNw
    String outputOutputGenomeCoverage
    Boolean outsideOutsideStats
    String outdirOutdir
    String outfileOutfile
    String outOutFormat
    String sequencingSequencingProtocol
    Boolean skipSkipDuplicated
    String skipSkipDupMode
  }
  command <<<
    qualimap bamqc \
      ~{if defined(bamBam) then ("-bam " +  '"' + bamBam + '"') else ""} \
      ~{true="--paint-chromosome-limits" false="" paintPaintChromosomeLimits} \
      ~{if defined(genomeGenomeGcDistr) then ("--genome-gc-distr " +  '"' + genomeGenomeGcDistr + '"') else ""} \
      ~{if defined(featureFeatureFile) then ("--feature-file " +  '"' + featureFeatureFile + '"') else ""} \
      ~{if defined(hmHm) then ("-hm " +  '"' + hmHm + '"') else ""} \
      ~{true="--collect-overlap-pairs" false="" collectCollectOverlapPairs} \
      ~{if defined(nrNr) then ("-nr " +  '"' + nrNr + '"') else ""} \
      ~{if defined(ntNt) then ("-nt " +  '"' + ntNt + '"') else ""} \
      ~{if defined(nwNw) then ("-nw " +  '"' + nwNw + '"') else ""} \
      ~{if defined(outputOutputGenomeCoverage) then ("--output-genome-coverage " +  '"' + outputOutputGenomeCoverage + '"') else ""} \
      ~{true="--outside-stats" false="" outsideOutsideStats} \
      ~{if defined(outdirOutdir) then ("-outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(outfileOutfile) then ("-outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(outOutFormat) then ("-outformat " +  '"' + outOutFormat + '"') else ""} \
      ~{if defined(sequencingSequencingProtocol) then ("--sequencing-protocol " +  '"' + sequencingSequencingProtocol + '"') else ""} \
      ~{true="--skip-duplicated" false="" skipSkipDuplicated} \
      ~{if defined(skipSkipDupMode) then ("--skip-dup-mode " +  '"' + skipSkipDupMode + '"') else ""}
  >>>
}