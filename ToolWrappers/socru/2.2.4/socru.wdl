version 1.0

task Socru {
  input {
    Directory? db_dir
    Int? threads
    File? output_file
    File? output_plot_file
    File? novel_profiles
    File? new_fragments
    File? top_blast_hits
    File? output_operon_directions_file
    Int? max_bases_from_ends
    Boolean? not_circular
    Int? min_bit_score
    Int? min_alignment_length
    Boolean? debug
    Boolean? verbose
    String species
    String input_files
  }
  command <<<
    socru \
      ~{species} \
      ~{input_files} \
      ~{if defined(db_dir) then ("--db_dir " +  '"' + db_dir + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""} \
      ~{if defined(output_plot_file) then ("--output_plot_file " +  '"' + output_plot_file + '"') else ""} \
      ~{if defined(novel_profiles) then ("--novel_profiles " +  '"' + novel_profiles + '"') else ""} \
      ~{if defined(new_fragments) then ("--new_fragments " +  '"' + new_fragments + '"') else ""} \
      ~{if defined(top_blast_hits) then ("--top_blast_hits " +  '"' + top_blast_hits + '"') else ""} \
      ~{if defined(output_operon_directions_file) then ("--output_operon_directions_file " +  '"' + output_operon_directions_file + '"') else ""} \
      ~{if defined(max_bases_from_ends) then ("--max_bases_from_ends " +  '"' + max_bases_from_ends + '"') else ""} \
      ~{if (not_circular) then "--not_circular" else ""} \
      ~{if defined(min_bit_score) then ("--min_bit_score " +  '"' + min_bit_score + '"') else ""} \
      ~{if defined(min_alignment_length) then ("--min_alignment_length " +  '"' + min_alignment_length + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    db_dir: "Base directory for species databases, defaults to\\nbundled (default: None)"
    threads: "No. of threads to use (default: 1)"
    output_file: "Output filename, defaults to STDOUT (default: None)"
    output_plot_file: "Filename of plot of genome structure (default:\\ngenome_structure.pdf)"
    novel_profiles: "Filename for novel profiles (default:\\nprofile.txt.novel)"
    new_fragments: "Filename for novel fragments (default:\\nnovel_fragments.fa)"
    top_blast_hits: "Filename for top blast hits (default: None)"
    output_operon_directions_file: "Filename of directions of operons (default:\\noperon_directions.txt)"
    max_bases_from_ends: "Only look at this number of bases from start and end\\nof fragment (default: None)"
    not_circular: "Assume chromosome is not circularised (default: False)"
    min_bit_score: "Minimum bit score (default: 100)"
    min_alignment_length: "Minimum alignment length (default: 100)"
    debug: "Turn on debugging (default: False)"
    verbose: "Turn on verbose output (default: False)"
    species: "Species name, use socru_species to see all available"
    input_files: "Input FASTA files (optionally gzipped)"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_output_plot_file = "${in_output_plot_file}"
    File out_output_operon_directions_file = "${in_output_operon_directions_file}"
  }
}