version 1.0

task GanonBuild {
  input {
    String? reference_files
    String? directory_reference_files
    String? extension
    String? seq_id_bin_file
    String? output_filter_file
    String? update_filter_file
    Boolean? update_complete
    String? filter_size
    String? filter_size_bits
    String? km_er_size
    String? hash_functions
    String? threads
    String? n_refs
    String? n_batches
    Boolean? verbose
    Boolean? quiet
    String? option_dot_dot_dot
  }
  command <<<
    ganon-build \
      ~{option_dot_dot_dot} \
      ~{if defined(reference_files) then ("--reference-files " +  '"' + reference_files + '"') else ""} \
      ~{if defined(directory_reference_files) then ("--directory-reference-files " +  '"' + directory_reference_files + '"') else ""} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""} \
      ~{if defined(seq_id_bin_file) then ("--seqid-bin-file " +  '"' + seq_id_bin_file + '"') else ""} \
      ~{if defined(output_filter_file) then ("--output-filter-file " +  '"' + output_filter_file + '"') else ""} \
      ~{if defined(update_filter_file) then ("--update-filter-file " +  '"' + update_filter_file + '"') else ""} \
      ~{true="--update-complete" false="" update_complete} \
      ~{if defined(filter_size) then ("--filter-size " +  '"' + filter_size + '"') else ""} \
      ~{if defined(filter_size_bits) then ("--filter-size-bits " +  '"' + filter_size_bits + '"') else ""} \
      ~{if defined(km_er_size) then ("--kmer-size " +  '"' + km_er_size + '"') else ""} \
      ~{if defined(hash_functions) then ("--hash-functions " +  '"' + hash_functions + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(n_refs) then ("--n-refs " +  '"' + n_refs + '"') else ""} \
      ~{if defined(n_batches) then ("--n-batches " +  '"' + n_batches + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    reference_files: "Sequence files .fasta .fa .fna (e.g ref.fna[.gz],[ref2.fna[.gz],...,refN.fna[.gz]])"
    directory_reference_files: "Directory with reference files. Do not provide wildcards, just path (e.g. /path/to/folder/)"
    extension: "Extension of the files to search in the --directory-reference-files (e.g. '.fna')"
    seq_id_bin_file: "Tab-separated file linking sequences and bin identifiers. The file should contain the following fields: Seq. Identifier <tab> Pos. Seq. Start <tab> Pos. Seq. End <tab> Bin Id"
    output_filter_file: "Output file for filter (e.g. filter.ibf)"
    update_filter_file: "Previously generated filter file to be updated"
    update_complete: "When using --update-filter-file and all sequences are provided to update index, set this option to not only add sequences to the filter but also remove"
    filter_size: "Final filter size in Megabytes (MB) [mutually exclusive --filter-size-bits]"
    filter_size_bits: "Final filter size in Bits (bit) [mutually exclusive --filter-size]"
    km_er_size: "k size to build filter"
    hash_functions: "Number of hash functions to build filter"
    threads: "Number of threads"
    n_refs: "Number of sequences for each batch"
    n_batches: "Number of batches of n-refs to hold in memory"
    verbose: "Verbose output mode"
    quiet: "Quiet output mode (only outputs errors and warnings to the stderr)"
    option_dot_dot_dot: ""
  }
}