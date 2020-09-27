version 1.0

task Ting {
  input {
    File? tcr_sequences
    File? reference
    File? km_er_file
    File? path_of_outputfile
    Boolean? use_structural_boundaries
    Boolean? no_global
    Boolean? no_local
    String? max_p_value
    Int? gli_ph_min_p
    Boolean? stringent_filtering
    Boolean? km_ers_gli_ph
  }
  command <<<
    ting \
      ~{if defined(tcr_sequences) then ("--tcr_sequences " +  '"' + tcr_sequences + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(km_er_file) then ("--kmer_file " +  '"' + km_er_file + '"') else ""} \
      ~{if defined(path_of_outputfile) then ("--output " +  '"' + path_of_outputfile + '"') else ""} \
      ~{if (use_structural_boundaries) then "--use_structural_boundaries" else ""} \
      ~{if (no_global) then "--no_global" else ""} \
      ~{if (no_local) then "--no_local" else ""} \
      ~{if defined(max_p_value) then ("--max_p_value " +  '"' + max_p_value + '"') else ""} \
      ~{if defined(gli_ph_min_p) then ("--gliph_minp " +  '"' + gli_ph_min_p + '"') else ""} \
      ~{if (stringent_filtering) then "--stringent_filtering" else ""} \
      ~{if (km_ers_gli_ph) then "--kmers_gliph" else ""}
  >>>
  parameter_meta {
    tcr_sequences: "File holding TCRs"
    reference: "Reference fasta file of naive CDR3 amino acid\\nsequences used for estimation of significant k-mers."
    km_er_file: "tab separated file holding kmers in first row"
    path_of_outputfile: "path of output-file"
    use_structural_boundaries: "First and last three amino acids are included in\\nprocessing"
    no_global: "If set global clustering is excluded"
    no_local: "If set local clustering is excluded"
    max_p_value: "p-value threshold for identifying significant k-mers\\nby fisher exact test"
    gli_ph_min_p: "probability threshold for identifying significant\\nk-mers by gliph test"
    stringent_filtering: "If used only TCRs starting with a cystein and ending\\nwith phenylalanine will be used"
    km_ers_gli_ph: "If set kmers are identified by the non-deterministic\\napproach as implemented by gliph\\n"
  }
  output {
    File out_stdout = stdout()
    File out_path_of_outputfile = "${in_path_of_outputfile}"
  }
}