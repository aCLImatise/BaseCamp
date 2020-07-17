version 1.0

task AnanseBinding {
  input {
    File? enhancers
    File? output_file
    String? genome
    File? pfm_file
    String? n_core
    Boolean? include_not_fs
    Boolean? un_remove_curated
    String an_anse
    String subcommand
    String binding
  }
  command <<<
    ananse binding \
      ~{an_anse} \
      ~{subcommand} \
      ~{binding} \
      ~{if defined(enhancers) then ("--enhancers " +  '"' + enhancers + '"') else ""} \
      ~{if defined(output_file) then ("--output " +  '"' + output_file + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(pfm_file) then ("--pfmfile " +  '"' + pfm_file + '"') else ""} \
      ~{if defined(n_core) then ("--ncore " +  '"' + n_core + '"') else ""} \
      ~{true="--include-notfs" false="" include_not_fs} \
      ~{true="--unremove-curated" false="" un_remove_curated}
  >>>
  parameter_meta {
    enhancers: "BED file with RPKM on the 4th column"
    output_file: "Output file"
    genome: "Genome"
    pfm_file: "PFM file with motifs"
    n_core: "Number of core used"
    include_not_fs: "Include or exclude noTFs from database. By default no tfs are exclude."
    un_remove_curated: "Include or exclude noTFs from database. By default no tfs are exclude."
    an_anse: ""
    subcommand: ""
    binding: ""
  }
}