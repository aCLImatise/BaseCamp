version 1.0

task Hansel {
  input {
    String? scheme
    String? scheme_name
    String? scheme_metadata
    String? reversereads__pairedreads
    String? genomename__inputfastagenomename
    String? input_directory
    String? output_summary
    String? output_km_er_results
    String? output_simple_summary
    Boolean? force
    Boolean? json
    Int? min_km_er_freq
    Int? max_km_er_freq
    String? low_cov_depth_freq
    Int? max_missing_km_ers
    Int? min_ambiguous_km_ers
    String? low_cov_warning
    Int? max_intermediate_km_ers
    Int? max_degenerate_km_ers
    String? threads
    Boolean? verbose
    String input_genome_fastafastq
  }
  command <<<
    hansel \
      ~{input_genome_fastafastq} \
      ~{if defined(scheme) then ("--scheme " +  '"' + scheme + '"') else ""} \
      ~{if defined(scheme_name) then ("--scheme-name " +  '"' + scheme_name + '"') else ""} \
      ~{if defined(scheme_metadata) then ("--scheme-metadata " +  '"' + scheme_metadata + '"') else ""} \
      ~{if defined(reversereads__pairedreads) then ("-p " +  '"' + reversereads__pairedreads + '"') else ""} \
      ~{if defined(genomename__inputfastagenomename) then ("-i " +  '"' + genomename__inputfastagenomename + '"') else ""} \
      ~{if defined(input_directory) then ("--input-directory " +  '"' + input_directory + '"') else ""} \
      ~{if defined(output_summary) then ("--output-summary " +  '"' + output_summary + '"') else ""} \
      ~{if defined(output_km_er_results) then ("--output-kmer-results " +  '"' + output_km_er_results + '"') else ""} \
      ~{if defined(output_simple_summary) then ("--output-simple-summary " +  '"' + output_simple_summary + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{true="--json" false="" json} \
      ~{if defined(min_km_er_freq) then ("--min-kmer-freq " +  '"' + min_km_er_freq + '"') else ""} \
      ~{if defined(max_km_er_freq) then ("--max-kmer-freq " +  '"' + max_km_er_freq + '"') else ""} \
      ~{if defined(low_cov_depth_freq) then ("--low-cov-depth-freq " +  '"' + low_cov_depth_freq + '"') else ""} \
      ~{if defined(max_missing_km_ers) then ("--max-missing-kmers " +  '"' + max_missing_km_ers + '"') else ""} \
      ~{if defined(min_ambiguous_km_ers) then ("--min-ambiguous-kmers " +  '"' + min_ambiguous_km_ers + '"') else ""} \
      ~{if defined(low_cov_warning) then ("--low-cov-warning " +  '"' + low_cov_warning + '"') else ""} \
      ~{if defined(max_intermediate_km_ers) then ("--max-intermediate-kmers " +  '"' + max_intermediate_km_ers + '"') else ""} \
      ~{if defined(max_degenerate_km_ers) then ("--max-degenerate-kmers " +  '"' + max_degenerate_km_ers + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    scheme: "Scheme to use for subtyping (built-in: \"heidelberg\", \"enteritidis\", \"typhi\", \"typhimurium\", \"tb_lineage\"; OR user-specified: /path/to/user/scheme)"
    scheme_name: "Custom user-specified SNP substyping scheme name"
    scheme_metadata: "Scheme subtype metadata table (tab-delimited file with \".tsv\" or \".tab\" extension or CSV with \".csv\" extension format accepted; MUST contain column called \"subtype\")"
    reversereads__pairedreads: "reverse_reads, --paired-reads forward_reads reverse_reads FASTQ paired-end reads"
    genomename__inputfastagenomename: "genome_name, --input-fasta-genome-name fasta_path genome_name input fasta file path AND genome name"
    input_directory: "directory of input fasta files (.fasta|.fa|.fna) or FASTQ files (paired FASTQ should have same basename with \"_\d\.(fastq|fq)\" postfix to be automatically paired) (files can be Gzipped)"
    output_summary: "Subtyping summary output path (tab-delimited)"
    output_km_er_results: "Subtyping kmer matching output path (tab-delimited)"
    output_simple_summary: "Subtyping simple summary output path"
    force: "Force existing output files to be overwritten"
    json: "Output JSON representation of output files"
    min_km_er_freq: "Min k-mer freq/coverage"
    max_km_er_freq: "Max k-mer freq/coverage"
    low_cov_depth_freq: "Frequencies below this coverage are considered low coverage"
    max_missing_km_ers: "Decimal proportion of maximum allowable missing kmers before being considered an error. (0.0 - 1.0)"
    min_ambiguous_km_ers: "Minimum number of missing kmers to be considered an ambiguous result"
    low_cov_warning: "Overall kmer coverage below this value will trigger a low coverage warning"
    max_intermediate_km_ers: "Decimal proportion of maximum allowable missing kmers to be considered an intermediate subtype. (0.0 - 1.0)"
    max_degenerate_km_ers: "Maximum number of scheme k-mers allowed before quitting with a usage warning. Default is 100000"
    threads: "Number of parallel threads to run analysis (default=1)"
    verbose: "Logging verbosity level (-v == show warnings; -vvv == show debug info)"
    input_genome_fastafastq: "Input genome FASTA/FASTQ files (can be Gzipped)"
  }
}