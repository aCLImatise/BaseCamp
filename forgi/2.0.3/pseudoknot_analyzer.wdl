version 1.0

task PseudoknotAnalyzer.py {
  input {
    Boolean keepKeepLengthOneStems
    String outfileOutfileMode
    Int minlengthMinlength
    String chainsChains
    String pdbPdbSecondaryStructure
    String pdbPdbAnnotationTool
    Boolean pdbPdbAllowWwwQuery
    Boolean verboseVerbose
    Boolean debugDebug
    Boolean qQ
    String? rnaRna
  }
  command <<<
    pseudoknot_analyzer.py \
      ~{rnaRna} \
      ~{true="--keep-length-one-stems" false="" keepKeepLengthOneStems} \
      ~{if defined(outfileOutfileMode) then ("--outfile-mode " +  '"' + outfileOutfileMode + '"') else ""} \
      ~{if defined(minlengthMinlength) then ("--minlength " +  '"' + minlengthMinlength + '"') else ""} \
      ~{if defined(chainsChains) then ("--chains " +  '"' + chainsChains + '"') else ""} \
      ~{if defined(pdbPdbSecondaryStructure) then ("--pdb-secondary-structure " +  '"' + pdbPdbSecondaryStructure + '"') else ""} \
      ~{if defined(pdbPdbAnnotationTool) then ("--pdb-annotation-tool " +  '"' + pdbPdbAnnotationTool + '"') else ""} \
      ~{true="--pdb-allow-www-query" false="" pdbPdbAllowWwwQuery} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="-q" false="" qQ}
  >>>
}