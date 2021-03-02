version 1.0

task Ganonbuild {
  input {
    Int? reference_files
    Directory? directory_reference_files
    String? extension
    File? seq_id_bin_file
    File? output_filter_file
    File? update_filter_file
    Int? filter_size
    Int? filter_size_bits
    Int? km_er_size
    Int? hash_functions
    Int? threads
    Int? n_refs
    Int? n_batches
    Boolean? verbose
    Boolean? quiet
    Boolean? v
    Boolean? c
    String updated
  }
  command <<<
    ganon_build \
      ~{updated} \
      ~{if defined(reference_files) then ("--reference-files " +  '"' + reference_files + '"') else ""} \
      ~{if defined(directory_reference_files) then ("--directory-reference-files " +  '"' + directory_reference_files + '"') else ""} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""} \
      ~{if defined(seq_id_bin_file) then ("--seqid-bin-file " +  '"' + seq_id_bin_file + '"') else ""} \
      ~{if defined(output_filter_file) then ("--output-filter-file " +  '"' + output_filter_file + '"') else ""} \
      ~{if defined(update_filter_file) then ("--update-filter-file " +  '"' + update_filter_file + '"') else ""} \
      ~{if defined(filter_size) then ("--filter-size " +  '"' + filter_size + '"') else ""} \
      ~{if defined(filter_size_bits) then ("--filter-size-bits " +  '"' + filter_size_bits + '"') else ""} \
      ~{if defined(km_er_size) then ("--kmer-size " +  '"' + km_er_size + '"') else ""} \
      ~{if defined(hash_functions) then ("--hash-functions " +  '"' + hash_functions + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(n_refs) then ("--n-refs " +  '"' + n_refs + '"') else ""} \
      ~{if defined(n_batches) then ("--n-batches " +  '"' + n_batches + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (v) then "-v" else ""} \
      ~{if (c) then "-c" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ganon:0.4.0--py38hb45e0f6_0"
  }
  parameter_meta {
    reference_files: "Sequence files .fasta .fa .fna (e.g\\nref.fna[.gz],[ref2.fna[.gz],...,refN.fna[.gz]])"
    directory_reference_files: "Directory with reference files. Do not\\nprovide wildcards, just path (e.g. /path/to/folder/)"
    extension: "Extension of the files to search in the"
    seq_id_bin_file: "Tab-separated file linking sequences and bin\\nidentifiers. The file should contain the\\nfollowing fields: Seq. Identifier <tab> Pos. Seq.\\nStart <tab> Pos. Seq. End <tab> Bin Id"
    output_filter_file: "Output file for filter (e.g. filter.ibf)"
    update_filter_file: "Previously generated filter file to be"
    filter_size: "Final filter size in Megabytes (MB) [mutually\\nexclusive --filter-size-bits]"
    filter_size_bits: "Final filter size in Bits (bit) [mutually\\nexclusive --filter-size]"
    km_er_size: "k size to build filter"
    hash_functions: "Number of hash functions to build filter"
    threads: "Number of threads"
    n_refs: "Number of sequences for each batch"
    n_batches: "Number of batches of n-refs to hold in memory"
    verbose: "Verbose output mode"
    quiet: "Quiet output mode (only outputs errors and\\nwarnings to the stderr)"
    v: ""
    c: ""
    updated: "-c, --update-complete         When using --update-filter-file and all"
  }
  output {
    File out_stdout = stdout()
    File out_output_filter_file = "${in_output_filter_file}"
  }
}