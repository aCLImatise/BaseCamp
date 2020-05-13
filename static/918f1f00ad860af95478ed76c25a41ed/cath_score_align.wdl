version 1.0

task CathScoreAlign {
  input {
    Boolean vV
    Boolean resResNameAlign
    File fastFastAAlnInFile
    File ssapSsapAlnInFile
    File coraCoraAlnInFile
    File ssapSsapScoresInFile
    Boolean doDoTheSSaps
    String alignAlignRefining
    String pdbPdbInFile
    Boolean pdbPdbSFromStdin
    String? alignmentAlignmentSource
    String? proteinProteinFileSource
    String? superpositionSuperpositionOutputs
  }
  command <<<
    cath-score-align \
      ~{alignmentAlignmentSource} \
      ~{true="-v" false="" vV} \
      ~{true="--res-name-align" false="" resResNameAlign} \
      ~{if defined(fastFastAAlnInFile) then ("--fasta-aln-infile " +  '"' + fastFastAAlnInFile + '"') else ""} \
      ~{if defined(ssapSsapAlnInFile) then ("--ssap-aln-infile " +  '"' + ssapSsapAlnInFile + '"') else ""} \
      ~{if defined(coraCoraAlnInFile) then ("--cora-aln-infile " +  '"' + coraCoraAlnInFile + '"') else ""} \
      ~{if defined(ssapSsapScoresInFile) then ("--ssap-scores-infile " +  '"' + ssapSsapScoresInFile + '"') else ""} \
      ~{true="--do-the-ssaps" false="" doDoTheSSaps} \
      ~{if defined(alignAlignRefining) then ("--align-refining " +  '"' + alignAlignRefining + '"') else ""} \
      ~{if defined(pdbPdbInFile) then ("--pdb-infile " +  '"' + pdbPdbInFile + '"') else ""} \
      ~{true="--pdbs-from-stdin" false="" pdbPdbSFromStdin} \
      ~{proteinProteinFileSource} \
      ~{superpositionSuperpositionOutputs}
  >>>
}