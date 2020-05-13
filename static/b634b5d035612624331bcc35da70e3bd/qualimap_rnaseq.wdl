version 1.0

task QualimapRnaseq {
  input {
    String algorithmAlgorithm
    String bamBam
    String gtfGtf
    String ocOc
    String outdirOutdir
    String outfileOutfile
    String outOutFormat
    String sequencingSequencingProtocol
    Boolean pairedPaired
    Boolean sortedSorted
  }
  command <<<
    qualimap rnaseq \
      ~{if defined(algorithmAlgorithm) then ("--algorithm " +  '"' + algorithmAlgorithm + '"') else ""} \
      ~{if defined(bamBam) then ("-bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(gtfGtf) then ("-gtf " +  '"' + gtfGtf + '"') else ""} \
      ~{if defined(ocOc) then ("-oc " +  '"' + ocOc + '"') else ""} \
      ~{if defined(outdirOutdir) then ("-outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(outfileOutfile) then ("-outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(outOutFormat) then ("-outformat " +  '"' + outOutFormat + '"') else ""} \
      ~{if defined(sequencingSequencingProtocol) then ("--sequencing-protocol " +  '"' + sequencingSequencingProtocol + '"') else ""} \
      ~{true="--paired" false="" pairedPaired} \
      ~{true="--sorted" false="" sortedSorted}
  >>>
}