version 1.0

task Transrate {
  input {
    String? assembly
    String? left_reads_files
    String? reads_files_fastq
    String? reference
    String? threads
    String? merge_assemblies
    String? directory_where_results
    String? loglevel
    String? install_deps
    Boolean? examples
  }
  command <<<
    transrate \
      ~{if defined(assembly) then ("--assembly " +  '"' + assembly + '"') else ""} \
      ~{if defined(left_reads_files) then ("--left " +  '"' + left_reads_files + '"') else ""} \
      ~{if defined(reads_files_fastq) then ("--right " +  '"' + reads_files_fastq + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(merge_assemblies) then ("--merge-assemblies " +  '"' + merge_assemblies + '"') else ""} \
      ~{if defined(directory_where_results) then ("--output " +  '"' + directory_where_results + '"') else ""} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(install_deps) then ("--install-deps " +  '"' + install_deps + '"') else ""} \
      ~{true="--examples" false="" examples}
  >>>
  parameter_meta {
    assembly: "Assembly file(s) in FASTA format, comma-separated"
    left_reads_files: "Left reads file(s) in FASTQ format, comma-separated"
    reads_files_fastq: "Right reads file(s) in FASTQ format, comma-separated"
    reference: "Reference proteome or transcriptome file in FASTA format"
    threads: "Number of threads to use (default: 8)"
    merge_assemblies: "Merge best contigs from multiple assemblies into file"
    directory_where_results: "Directory where results are output (will be created) (default: transrate_results)"
    loglevel: "Log level. One of [error, info, warn, debug] (default: info)"
    install_deps: "Install any missing dependencies. One of [read, ref, all]"
    examples: "Show some example commands with explanations"
  }
}