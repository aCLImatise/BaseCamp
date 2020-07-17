version 1.0

task Socru {
  input {
    String? db_dir
    String? threads
    String? output_file
    String? output_plot_file
    String? novel_profiles
    String? new_fragments
    String? top_blast_hits
    String? output_operon_directions_file
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
      ~{true="--not_circular" false="" not_circular} \
      ~{if defined(min_bit_score) then ("--min_bit_score " +  '"' + min_bit_score + '"') else ""} \
      ~{if defined(min_alignment_length) then ("--min_alignment_length " +  '"' + min_alignment_length + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    db_dir: "Base directory for species databases, defaults to bundled (default: None)"
    threads: "No. of threads to use (default: 1)"
    output_file: "Output filename, defaults to STDOUT (default: None)"
    output_plot_file: "Filename of plot of genome structure (default: genome_structure.pdf)"
    novel_profiles: "Filename for novel profiles (default: profile.txt.novel)"
    new_fragments: "Filename for novel fragments (default: novel_fragments.fa)"
    top_blast_hits: "Filename for top blast hits (default: None)"
    output_operon_directions_file: "Filename of directions of operons (default: operon_directions.txt)"
    max_bases_from_ends: "Only look at this number of bases from start and end of fragment (default: None)"
    not_circular: "Assume chromosome is not circularised (default: False)"
    min_bit_score: "Minimum bit score (default: 100)"
    min_alignment_length: "Minimum alignment length (default: 100)"
    debug: "Turn on debugging (default: False)"
    verbose: "Turn on verbose output (default: False)"
    species: "Species name, use socru_species to see all available"
    input_files: "Input FASTA files (optionally gzipped)"
  }
}