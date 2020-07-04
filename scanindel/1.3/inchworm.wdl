version 1.0

task Inchworm {
  input {
    Boolean? reads
    Boolean? km_ers
    String? km_er_files_listing
    Boolean? run_inchworm
    Int? kmer_length_default
    Int? mink_mer_count
    Int? min_contig_length
    Boolean? min_assembly_coverage
    String? coverage_outfile
    Boolean? ds
    Boolean? no_prune_error_km_ers
    Float? min_ratio_non_error
    Int? num_threads
    Int? monitor
    Boolean? show_advanced
    String? opts
  }
  command <<<
    inchworm \
      ~{opts} \
      ~{true="--reads" false="" reads} \
      ~{true="--kmers" false="" km_ers} \
      ~{if defined(km_er_files_listing) then ("--kmer_files_listing " +  '"' + km_er_files_listing + '"') else ""} \
      ~{true="--run_inchworm" false="" run_inchworm} \
      ~{if defined(kmer_length_default) then ("-K " +  '"' + kmer_length_default + '"') else ""} \
      ~{if defined(mink_mer_count) then ("--minKmerCount " +  '"' + mink_mer_count + '"') else ""} \
      ~{if defined(min_contig_length) then ("-L " +  '"' + min_contig_length + '"') else ""} \
      ~{true="--min_assembly_coverage" false="" min_assembly_coverage} \
      ~{if defined(coverage_outfile) then ("--coverage_outfile " +  '"' + coverage_outfile + '"') else ""} \
      ~{true="--DS" false="" ds} \
      ~{true="--no_prune_error_kmers" false="" no_prune_error_km_ers} \
      ~{if defined(min_ratio_non_error) then ("--min_ratio_non_error " +  '"' + min_ratio_non_error + '"') else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(monitor) then ("--monitor " +  '"' + monitor + '"') else ""} \
      ~{true="--show_advanced" false="" show_advanced}
  >>>
  parameter_meta {
    reads: "<str>             :fasta file containing reads"
    km_ers: "<str>             :fasta file containing kmers"
    km_er_files_listing: ":file listing filenames containing kmers"
    run_inchworm: ":run inchworm, report sequences"
    kmer_length_default: ":kmer length (default: 25, meaning 24mer overlaps)  max = 32 (stored as 64-bit integers, 2-base char encoding)"
    mink_mer_count: ":min kmer count, lower abundant kmers are pruned from graph (default: 1)"
    min_contig_length: ":min contig length to be reported (default: 25)"
    min_assembly_coverage: "<int>   :min kmer coverage of an assembled contig to be reported (default: 2)"
    coverage_outfile: ":file to store per-base kmer coverage for contigs"
    ds: ":double-stranded RNA-Seq mode (not strand-specific)"
    no_prune_error_km_ers: ":disable pruning of kmers that occur at below --min_ratio_non_error "
    min_ratio_non_error: ":min ratio for low/high alternative extension that is not an error (default: 0.05)"
    num_threads: ":number of threads to use."
    monitor: ":verbosity. ( '1': recommended, '2': for debugging ) "
    show_advanced: ":more advanced options (mostly experimental)"
    opts: ""
  }
}