version 1.0

task GimmeDiff {
  input {
    String? pfm_file
    Boolean? _cutoff_motif
    Int? enrichment
    Int? frequency
    String? genome
    Boolean? h
    String fa_files
    String bgf_a_file
    String png_file
  }
  command <<<
    gimme diff \
      ~{fa_files} \
      ~{bgf_a_file} \
      ~{png_file} \
      ~{if defined(pfm_file) then ("--pfmfile " +  '"' + pfm_file + '"') else ""} \
      ~{true="-c" false="" _cutoff_motif} \
      ~{if defined(enrichment) then ("--enrichment " +  '"' + enrichment + '"') else ""} \
      ~{if defined(frequency) then ("--frequency " +  '"' + frequency + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{true="-h" false="" h}
  >>>
  parameter_meta {
    pfm_file: "PFM file with motifs (default: gimme.vertebrate.v5.0.pfm)"
    _cutoff_motif: ", --cutoff         motif score cutoff or file with cutoffs (default 0.9)"
    enrichment: "minimum enrichment in at least one of the datasets compared to background"
    frequency: "minimum frequency in at least one of the datasets"
    genome: "Genome; only necessary in combination with a BED file with clusters as inputfile."
    h: ""
    fa_files: "FASTA-formatted inputfiles OR a BED file with an identifier in the 4th column, for instance a cluster number."
    bgf_a_file: "FASTA-formatted background file"
    png_file: "outputfile (image)"
  }
}