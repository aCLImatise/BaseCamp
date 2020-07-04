version 1.0

task Ting {
  input {
    String? tcr_sequences
    String? reference
    String? km_er_file
    String? path_of_outputfile
    Boolean? use_structural_boundaries
    Boolean? no_global
    Boolean? no_local
    Int? max_p_value
    String? gli_ph_min_p
    Boolean? stringent_filtering
    Boolean? km_ers_gli_ph
  }
  command <<<
    ting \
      ~{if defined(tcr_sequences) then ("--tcr_sequences " +  '"' + tcr_sequences + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(km_er_file) then ("--kmer_file " +  '"' + km_er_file + '"') else ""} \
      ~{if defined(path_of_outputfile) then ("--output " +  '"' + path_of_outputfile + '"') else ""} \
      ~{true="--use_structural_boundaries" false="" use_structural_boundaries} \
      ~{true="--no_global" false="" no_global} \
      ~{true="--no_local" false="" no_local} \
      ~{if defined(max_p_value) then ("--max_p_value " +  '"' + max_p_value + '"') else ""} \
      ~{if defined(gli_ph_min_p) then ("--gliph_minp " +  '"' + gli_ph_min_p + '"') else ""} \
      ~{true="--stringent_filtering" false="" stringent_filtering} \
      ~{true="--kmers_gliph" false="" km_ers_gli_ph}
  >>>
  parameter_meta {
    tcr_sequences: "File holding TCRs"
    reference: "Reference fasta file of naive CDR3 amino acid sequences used for estimation of significant k-mers."
    km_er_file: "tab separated file holding kmers in first row"
    path_of_outputfile: "path of output-file"
    use_structural_boundaries: "First and last three amino acids are included in processing"
    no_global: "If set global clustering is excluded"
    no_local: "If set local clustering is excluded"
    max_p_value: "p-value threshold for identifying significant k-mers by fisher exact test"
    gli_ph_min_p: "probability threshold for identifying significant k-mers by gliph test"
    stringent_filtering: "If used only TCRs starting with a cystein and ending with phenylalanine will be used"
    km_ers_gli_ph: "If set kmers are identified by the non-deterministic approach as implemented by gliph"
  }
}