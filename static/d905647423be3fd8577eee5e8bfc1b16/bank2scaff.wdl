version 1.0

task Bank2scaff {
  input {
    Boolean? display_compatible_version
    Boolean? use_eids_names
    Boolean? use_iids_names
    File? print_just_eids
    File? print_just_iids
    Boolean? show_ungapped_lengths
    Boolean? create_links_file
    Boolean? print_scaffold_sequences
    Boolean? use_estimated_size
    Boolean? join_contigs_spaced
    String? gaps_val_will
    String? specify_number_ns
    String bank_two_sc_aff
  }
  command <<<
    bank2scaff \
      ~{bank_two_sc_aff} \
      ~{true="-v" false="" display_compatible_version} \
      ~{true="-e" false="" use_eids_names} \
      ~{true="-i" false="" use_iids_names} \
      ~{if defined(print_just_eids) then ("-E " +  '"' + print_just_eids + '"') else ""} \
      ~{if defined(print_just_iids) then ("-I " +  '"' + print_just_iids + '"') else ""} \
      ~{true="-u" false="" show_ungapped_lengths} \
      ~{true="-l" false="" create_links_file} \
      ~{true="-f" false="" print_scaffold_sequences} \
      ~{true="-g" false="" use_estimated_size} \
      ~{true="-j" false="" join_contigs_spaced} \
      ~{if defined(gaps_val_will) then ("-G " +  '"' + gaps_val_will + '"') else ""} \
      ~{if defined(specify_number_ns) then ("-N " +  '"' + specify_number_ns + '"') else ""}
  >>>
  parameter_meta {
    display_compatible_version: "Display the compatible bank version"
    use_eids_names: "Use EIDs for names (DEFAULT)"
    use_iids_names: "Use IIDs for names"
    print_just_eids: "Print just the contig eids listed in file"
    print_just_iids: "Print just the contig iids listed in file"
    show_ungapped_lengths: "Show the ungapped contig lengths in the scaff file"
    create_links_file: "Create a Arachne links file"
    print_scaffold_sequences: "Print the scaffold consensus sequences in multi-fasta format"
    use_estimated_size: "Use the estimated gaps size to space contigs"
    join_contigs_spaced: "Join contigs spaced by less than 2 bp (needs -f, if G provided overrides 2)"
    gaps_val_will: "Gaps < val will have val N's between them (-g)"
    specify_number_ns: "Specify number of N's to place between contigs"
    bank_two_sc_aff: "[options]  <bank path>"
  }
}