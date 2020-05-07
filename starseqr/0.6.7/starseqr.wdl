version 1.0

task Starseqr.py {
  input {
    String prefixPrefix
    String fastFastA
    String gtfGtf
    String libraryLibrary
    String threadsThreads
    String bedBedFile
    String subsetSubsetType
    String asAsType
    Boolean keepKeepDups
    Boolean keepKeepGeneDups
    Boolean keepKeepMiTo
    Boolean verboseVerbose
    String starStarIndex
    Boolean mM
    String starStarJXns
    String starStarSam
    String starStarBam
  }
  command <<<
    starseqr.py \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(gtfGtf) then ("--gtf " +  '"' + gtfGtf + '"') else ""} \
      ~{if defined(libraryLibrary) then ("--library " +  '"' + libraryLibrary + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(bedBedFile) then ("--bed_file " +  '"' + bedBedFile + '"') else ""} \
      ~{if defined(subsetSubsetType) then ("--subset_type " +  '"' + subsetSubsetType + '"') else ""} \
      ~{if defined(asAsType) then ("--as_type " +  '"' + asAsType + '"') else ""} \
      ~{true="--keep_dups" false="" keepKeepDups} \
      ~{true="--keep_gene_dups" false="" keepKeepGeneDups} \
      ~{true="--keep_mito" false="" keepKeepMiTo} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(starStarIndex) then ("--star_index " +  '"' + starStarIndex + '"') else ""} \
      ~{true="-m" false="" mM} \
      ~{if defined(starStarJXns) then ("--star_jxns " +  '"' + starStarJXns + '"') else ""} \
      ~{if defined(starStarSam) then ("--star_sam " +  '"' + starStarSam + '"') else ""} \
      ~{if defined(starStarBam) then ("--star_bam " +  '"' + starStarBam + '"') else ""}
  >>>
}