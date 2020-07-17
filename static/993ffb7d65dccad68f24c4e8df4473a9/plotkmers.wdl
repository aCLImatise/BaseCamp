version 1.0

task Plotkmers {
  input {
    String? plot_filename
    String? km_er
    Int? max_km_ers_threshold
    Int? max_km_ers_to_show
    String? threads
    Boolean? keep_files
    Boolean? verbose
    String output_directory
    String assemblies
  }
  command <<<
    plotkmers \
      ~{output_directory} \
      ~{assemblies} \
      ~{if defined(plot_filename) then ("--plot_filename " +  '"' + plot_filename + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(max_km_ers_threshold) then ("--max_kmers_threshold " +  '"' + max_km_ers_threshold + '"') else ""} \
      ~{if defined(max_km_ers_to_show) then ("--max_kmers_to_show " +  '"' + max_km_ers_to_show + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--keep_files" false="" keep_files} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    plot_filename: "Kmer to use, depends on read length [kmerplot.png]"
    km_er: "Kmer to use, depends on read length [51]"
    max_km_ers_threshold: "Exclude k-mers occurring more than this [254]"
    max_km_ers_to_show: "If there are too many kmers to view, subsample [100000]"
    threads: "Number of threads [1]"
    keep_files: "Keep intermediate files [False]"
    verbose: "Turn on debugging [0]"
    output_directory: "Output directory"
    assemblies: "FASTA files which may be gzipped"
  }
}