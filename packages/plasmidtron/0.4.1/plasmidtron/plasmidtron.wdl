version 1.0

task Plasmidtron {
  input {
    String? action
    Boolean? keep_files
    Int? km_er
    Int? min_contig_len
    Int? min_spades_contig_coverage
    Int? max_spades_contig_coverage
    Int? min_km_ers_threshold
    Int? max_km_ers_threshold
    Int? min_controls_km_ers_threshold
    Int? max_controls_km_ers_threshold
    Int? min_km_ers_per_read
    Boolean? match_both_pairs
    File? plot_filename
    Boolean? km_er_plot
    String? spades_exec
    Int? threads
    Boolean? verbose
    String output_directory
    String file_of_traits
    String file_of_non_traits
  }
  command <<<
    plasmidtron \
      ~{output_directory} \
      ~{file_of_traits} \
      ~{file_of_non_traits} \
      ~{if defined(action) then ("--action " +  '"' + action + '"') else ""} \
      ~{if (keep_files) then "--keep_files" else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(min_contig_len) then ("--min_contig_len " +  '"' + min_contig_len + '"') else ""} \
      ~{if defined(min_spades_contig_coverage) then ("--min_spades_contig_coverage " +  '"' + min_spades_contig_coverage + '"') else ""} \
      ~{if defined(max_spades_contig_coverage) then ("--max_spades_contig_coverage " +  '"' + max_spades_contig_coverage + '"') else ""} \
      ~{if defined(min_km_ers_threshold) then ("--min_kmers_threshold " +  '"' + min_km_ers_threshold + '"') else ""} \
      ~{if defined(max_km_ers_threshold) then ("--max_kmers_threshold " +  '"' + max_km_ers_threshold + '"') else ""} \
      ~{if defined(min_controls_km_ers_threshold) then ("--min_controls_kmers_threshold " +  '"' + min_controls_km_ers_threshold + '"') else ""} \
      ~{if defined(max_controls_km_ers_threshold) then ("--max_controls_kmers_threshold " +  '"' + max_controls_km_ers_threshold + '"') else ""} \
      ~{if defined(min_km_ers_per_read) then ("--min_kmers_per_read " +  '"' + min_km_ers_per_read + '"') else ""} \
      ~{if (match_both_pairs) then "--match_both_pairs" else ""} \
      ~{if defined(plot_filename) then ("--plot_filename " +  '"' + plot_filename + '"') else ""} \
      ~{if (km_er_plot) then "--kmer_plot" else ""} \
      ~{if defined(spades_exec) then ("--spades_exec " +  '"' + spades_exec + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    action: "Control how the traits kmers are filtered for assembly\\n[union]"
    keep_files: "Keep intermediate files [False]"
    km_er: "Kmer to use, depends on read length [51]"
    min_contig_len: "Minimum contig length in final assembly [300]"
    min_spades_contig_coverage: "Filter out contigs with low coverage. Set to 0 to keep\\nall. [5]"
    max_spades_contig_coverage: "Filter out contigs with high coverage. Set to 0 to\\nkeep all. [500]"
    min_km_ers_threshold: "Exclude traits k-mers occurring less than this [10]"
    max_km_ers_threshold: "Exclude traits k-mers occurring more than this [254]"
    min_controls_km_ers_threshold: "Exclude nontraits k-mers occurring less than this [5]"
    max_controls_km_ers_threshold: "Exclude nontraits k-mers occurring more than this\\n[254]"
    min_km_ers_per_read: "Min percentage kmer coverage of read to keep it[0.2]"
    match_both_pairs: "Match both pairs to keep them in assembly [False]"
    plot_filename: "Kmer to use, depends on read length [kmerplot.png]"
    km_er_plot: "Create kmer plot [False]"
    spades_exec: "Set the SPAdes executable [spades.py]"
    threads: "Number of threads [1]"
    verbose: "Turn on debugging [0]"
    output_directory: "Output directory"
    file_of_traits: "File of filenames of trait (case) FASTQs"
    file_of_non_traits: "File of filenames of nontrait (control) FASTQs"
  }
  output {
    File out_stdout = stdout()
  }
}