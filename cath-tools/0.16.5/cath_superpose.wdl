version 1.0

task CathSuperpose {
  input {
    Boolean vV
    Boolean resResNameAlign
    File fastFastAAlnInFile
    File ssapSsapAlnInFile
    File coraCoraAlnInFile
    File ssapSsapScoresInFile
    Boolean doDoTheSSaps
    String alignAlignRefining
    File jsonJsonSupInFile
    String idId
    String pdbPdbInFile
    Boolean pdbPdbSFromStdin
    String alignAlignRegions
    String alnAlnToCathAlnFile
    Boolean alnAlnToCathAlnStdout
    String alnAlnToFastAFile
    Boolean alnAlnToFastAStdout
    String alnAlnToSsapFile
    Boolean alnAlnToSsapStdout
    String alnAlnToHtmlFile
    Boolean alnAlnToHtmlStdout
    String supSupToPdbFile
    String supSupToPdbFilesDir
    Boolean supSupToStdout
    Boolean supSupToPymol
    String pymolPymolProgram
    String supSupToPymolFile
    String supSupToJsonFile
    String viewerViewerColours
    Boolean gradientGradientColourAlignment
    Boolean showShowScoresIfPresent
    Boolean scoresScoresToEquivs
    Boolean normaliseNormaliseScores
    String regionsRegionsContext
    String showShowDnaWithinDist
    String showShowOrganicWithinDist
    String? alignmentAlignmentSource
    String? pdbPdbFileSource
    String? superpositionSuperpositionOutputs
  }
  command <<<
    cath-superpose \
      ~{alignmentAlignmentSource} \
      ~{true="-v" false="" vV} \
      ~{true="--res-name-align" false="" resResNameAlign} \
      ~{if defined(fastFastAAlnInFile) then ("--fasta-aln-infile " +  '"' + fastFastAAlnInFile + '"') else ""} \
      ~{if defined(ssapSsapAlnInFile) then ("--ssap-aln-infile " +  '"' + ssapSsapAlnInFile + '"') else ""} \
      ~{if defined(coraCoraAlnInFile) then ("--cora-aln-infile " +  '"' + coraCoraAlnInFile + '"') else ""} \
      ~{if defined(ssapSsapScoresInFile) then ("--ssap-scores-infile " +  '"' + ssapSsapScoresInFile + '"') else ""} \
      ~{true="--do-the-ssaps" false="" doDoTheSSaps} \
      ~{if defined(alignAlignRefining) then ("--align-refining " +  '"' + alignAlignRefining + '"') else ""} \
      ~{if defined(jsonJsonSupInFile) then ("--json-sup-infile " +  '"' + jsonJsonSupInFile + '"') else ""} \
      ~{if defined(idId) then ("--id " +  '"' + idId + '"') else ""} \
      ~{if defined(pdbPdbInFile) then ("--pdb-infile " +  '"' + pdbPdbInFile + '"') else ""} \
      ~{true="--pdbs-from-stdin" false="" pdbPdbSFromStdin} \
      ~{if defined(alignAlignRegions) then ("--align-regions " +  '"' + alignAlignRegions + '"') else ""} \
      ~{if defined(alnAlnToCathAlnFile) then ("--aln-to-cath-aln-file " +  '"' + alnAlnToCathAlnFile + '"') else ""} \
      ~{true="--aln-to-cath-aln-stdout" false="" alnAlnToCathAlnStdout} \
      ~{if defined(alnAlnToFastAFile) then ("--aln-to-fasta-file " +  '"' + alnAlnToFastAFile + '"') else ""} \
      ~{true="--aln-to-fasta-stdout" false="" alnAlnToFastAStdout} \
      ~{if defined(alnAlnToSsapFile) then ("--aln-to-ssap-file " +  '"' + alnAlnToSsapFile + '"') else ""} \
      ~{true="--aln-to-ssap-stdout" false="" alnAlnToSsapStdout} \
      ~{if defined(alnAlnToHtmlFile) then ("--aln-to-html-file " +  '"' + alnAlnToHtmlFile + '"') else ""} \
      ~{true="--aln-to-html-stdout" false="" alnAlnToHtmlStdout} \
      ~{if defined(supSupToPdbFile) then ("--sup-to-pdb-file " +  '"' + supSupToPdbFile + '"') else ""} \
      ~{if defined(supSupToPdbFilesDir) then ("--sup-to-pdb-files-dir " +  '"' + supSupToPdbFilesDir + '"') else ""} \
      ~{true="--sup-to-stdout" false="" supSupToStdout} \
      ~{true="--sup-to-pymol" false="" supSupToPymol} \
      ~{if defined(pymolPymolProgram) then ("--pymol-program " +  '"' + pymolPymolProgram + '"') else ""} \
      ~{if defined(supSupToPymolFile) then ("--sup-to-pymol-file " +  '"' + supSupToPymolFile + '"') else ""} \
      ~{if defined(supSupToJsonFile) then ("--sup-to-json-file " +  '"' + supSupToJsonFile + '"') else ""} \
      ~{if defined(viewerViewerColours) then ("--viewer-colours " +  '"' + viewerViewerColours + '"') else ""} \
      ~{true="--gradient-colour-alignment" false="" gradientGradientColourAlignment} \
      ~{true="--show-scores-if-present" false="" showShowScoresIfPresent} \
      ~{true="--scores-to-equivs" false="" scoresScoresToEquivs} \
      ~{true="--normalise-scores" false="" normaliseNormaliseScores} \
      ~{if defined(regionsRegionsContext) then ("--regions-context " +  '"' + regionsRegionsContext + '"') else ""} \
      ~{if defined(showShowDnaWithinDist) then ("--show-dna-within-dist " +  '"' + showShowDnaWithinDist + '"') else ""} \
      ~{if defined(showShowOrganicWithinDist) then ("--show-organic-within-dist " +  '"' + showShowOrganicWithinDist + '"') else ""} \
      ~{pdbPdbFileSource} \
      ~{superpositionSuperpositionOutputs}
  >>>
}