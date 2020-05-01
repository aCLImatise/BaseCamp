version 1.0

task Kaptive.py {
  input {
    Array[String]+ assemblyAssembly
    String kKRefs
    String allelicAllelicTyping
    String outOut
    Boolean verboseVerbose
    String threadsThreads
    Boolean noNoSeqOut
    Boolean noNoTable
    Boolean noNoJson
    String startStartEndMargin
    Int minMinGeneCov
    Int minMinGeneId
    String lowLowGeneId
    Int minMinAssemblyPiece
    String gapGapFillSize
    String locusLocusLabel
  }
  command <<<
    kaptive.py \
      ~{if defined(assemblyAssembly) then ("--assembly " +  '"' + assemblyAssembly + '"') else ""} \
      ~{if defined(kKRefs) then ("--k_refs " +  '"' + kKRefs + '"') else ""} \
      ~{if defined(allelicAllelicTyping) then ("--allelic_typing " +  '"' + allelicAllelicTyping + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--no_seq_out" false="" noNoSeqOut} \
      ~{true="--no_table" false="" noNoTable} \
      ~{true="--no_json" false="" noNoJson} \
      ~{if defined(startStartEndMargin) then ("--start_end_margin " +  '"' + startStartEndMargin + '"') else ""} \
      ~{if defined(minMinGeneCov) then ("--min_gene_cov " +  '"' + minMinGeneCov + '"') else ""} \
      ~{if defined(minMinGeneId) then ("--min_gene_id " +  '"' + minMinGeneId + '"') else ""} \
      ~{if defined(lowLowGeneId) then ("--low_gene_id " +  '"' + lowLowGeneId + '"') else ""} \
      ~{if defined(minMinAssemblyPiece) then ("--min_assembly_piece " +  '"' + minMinAssemblyPiece + '"') else ""} \
      ~{if defined(gapGapFillSize) then ("--gap_fill_size " +  '"' + gapGapFillSize + '"') else ""} \
      ~{if defined(locusLocusLabel) then ("--locus_label " +  '"' + locusLocusLabel + '"') else ""}
  >>>
}