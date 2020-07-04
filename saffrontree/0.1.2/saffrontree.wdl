version 1.0

task Saffrontree {
  input {
    String? km_er
    Int? min_km_ers_threshold
    Int? max_km_ers_threshold
    String? threads
    Boolean? keep_files
    Boolean? verbose
    String output_directory
    String input_files
  }
  command <<<
    saffrontree \
      ~{output_directory} \
      ~{input_files} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(min_km_ers_threshold) then ("--min_kmers_threshold " +  '"' + min_km_ers_threshold + '"') else ""} \
      ~{if defined(max_km_ers_threshold) then ("--max_kmers_threshold " +  '"' + max_km_ers_threshold + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--keep_files" false="" keep_files} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    km_er: "Kmer to use, depends on read length [31]"
    min_km_ers_threshold: "Exclude k-mers occurring less than this [5]"
    max_km_ers_threshold: "Exclude k-mers occurring more than this [255]"
    threads: "Number of threads [1]"
    keep_files: "Keep intermediate files [False]"
    verbose: "Turn on more debugging output [False]"
    output_directory: "Output directory"
    input_files: "FASTQ/FASTA files which may be gzipped"
  }
}