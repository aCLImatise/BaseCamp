version 1.0

task Bank2scaff {
  input {
    Boolean? display_compatible_version
    Boolean? use_eids_default
    Boolean? use_iids_names
    File? print_just_eids
    File? print_just_contig
    Boolean? show_ungapped_lengths
    Boolean? create_arachne_links
    Boolean? print_scaffold_sequences
    Boolean? use_estimated_size
    Boolean? join_contigs_spaced
    String? gaps_val_have
    Int? specify_number_place
    Int bank_two_sc_aff
  }
  command <<<
    bank2scaff \
      ~{bank_two_sc_aff} \
      ~{if (display_compatible_version) then "-v" else ""} \
      ~{if (use_eids_default) then "-e" else ""} \
      ~{if (use_iids_names) then "-i" else ""} \
      ~{if defined(print_just_eids) then ("-E " +  '"' + print_just_eids + '"') else ""} \
      ~{if defined(print_just_contig) then ("-I " +  '"' + print_just_contig + '"') else ""} \
      ~{if (show_ungapped_lengths) then "-u" else ""} \
      ~{if (create_arachne_links) then "-l" else ""} \
      ~{if (print_scaffold_sequences) then "-f" else ""} \
      ~{if (use_estimated_size) then "-g" else ""} \
      ~{if (join_contigs_spaced) then "-j" else ""} \
      ~{if defined(gaps_val_have) then ("-G " +  '"' + gaps_val_have + '"') else ""} \
      ~{if defined(specify_number_place) then ("-N " +  '"' + specify_number_place + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    display_compatible_version: "Display the compatible bank version"
    use_eids_default: "Use EIDs for names (DEFAULT)"
    use_iids_names: "Use IIDs for names"
    print_just_eids: "Print just the contig eids listed in file"
    print_just_contig: "Print just the contig iids listed in file"
    show_ungapped_lengths: "Show the ungapped contig lengths in the scaff file"
    create_arachne_links: "Create a Arachne links file"
    print_scaffold_sequences: "Print the scaffold consensus sequences in multi-fasta format"
    use_estimated_size: "Use the estimated gaps size to space contigs"
    join_contigs_spaced: "Join contigs spaced by less than 2 bp (needs -f, if G provided overrides 2)"
    gaps_val_have: "Gaps < val will have val N's between them (-g)"
    specify_number_place: "Specify number of N's to place between contigs"
    bank_two_sc_aff: "[options]  <bank path>"
  }
  output {
    File out_stdout = stdout()
  }
}