version 1.0

task Grmpy {
  input {
    Boolean? arg_output_folder_alignments
    String? bad_align_frac
    String? bad_align_uniq_km_er_len
    Boolean? arg_json_file
    String? graph_sequence_matching
    Boolean? arg_json_files
    Boolean? gzipcompress_output_files
    Boolean? help_defaults
    Boolean? help_md
    Boolean? infer_read_haplotypes
    String? k_lib_sequence_matching
    String? km_er_sequence_matching
    String? log_async
    String? log_file
    String? log_level
    Boolean? arg_manifest_bam
    Boolean? arg_maximum_number
    Boolean? arg_output_file
    Boolean? arg_output_folder_path
    String? path_sequence_matching
    Boolean? progress
    Boolean? arg_reference_genome
    String? response_file
    Boolean? arg_number_threads
    Boolean? print_program_version
  }
  command <<<
    grmpy \
      ~{true="-A" false="" arg_output_folder_alignments} \
      ~{if defined(bad_align_frac) then ("--bad-align-frac " +  '"' + bad_align_frac + '"') else ""} \
      ~{if defined(bad_align_uniq_km_er_len) then ("--bad-align-uniq-kmer-len " +  '"' + bad_align_uniq_km_er_len + '"') else ""} \
      ~{true="-G" false="" arg_json_file} \
      ~{if defined(graph_sequence_matching) then ("--graph-sequence-matching " +  '"' + graph_sequence_matching + '"') else ""} \
      ~{true="-g" false="" arg_json_files} \
      ~{true="-z" false="" gzipcompress_output_files} \
      ~{true="--help-defaults" false="" help_defaults} \
      ~{true="--help-md" false="" help_md} \
      ~{true="--infer-read-haplotypes" false="" infer_read_haplotypes} \
      ~{if defined(k_lib_sequence_matching) then ("--klib-sequence-matching " +  '"' + k_lib_sequence_matching + '"') else ""} \
      ~{if defined(km_er_sequence_matching) then ("--kmer-sequence-matching " +  '"' + km_er_sequence_matching + '"') else ""} \
      ~{if defined(log_async) then ("--log-async " +  '"' + log_async + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{true="-m" false="" arg_manifest_bam} \
      ~{true="-M" false="" arg_maximum_number} \
      ~{true="-o" false="" arg_output_file} \
      ~{true="-O" false="" arg_output_folder_path} \
      ~{if defined(path_sequence_matching) then ("--path-sequence-matching " +  '"' + path_sequence_matching + '"') else ""} \
      ~{true="--progress" false="" progress} \
      ~{true="-r" false="" arg_reference_genome} \
      ~{if defined(response_file) then ("--response-file " +  '"' + response_file + '"') else ""} \
      ~{true="-t" false="" arg_number_threads} \
      ~{true="-v" false="" print_program_version}
  >>>
  parameter_meta {
    arg_output_folder_alignments: "[ --alignment-output-folder ] arg      Output folder for alignments. Note  these can become very large and are only requiredfor curation /  visualisation or faster reanalysis."
    bad_align_frac: "(=0.800000012)       Fraction of read that needs to be  mapped in order for it to be used."
    bad_align_uniq_km_er_len: "(=0)        Kmer length for uniqueness check  during read filtering."
    arg_json_file: "[ --genotyping-parameters ] arg        JSON file with genotyping model  parameters"
    graph_sequence_matching: "(=1)        Enables smith waterman graph  alignment"
    arg_json_files: "[ --graph-spec ] arg                   JSON file(s) describing the  graph(s)"
    gzipcompress_output_files: "[ --gzip-output ] [=arg(=1)] (=0)      gzip-compress output files. If -O  is used, output file names are  appended with .gz"
    help_defaults: "produce tab-delimited list of  command line options and their  default values"
    help_md: "produce help message pre-formatted  as a markdown file section and exit"
    infer_read_haplotypes: "[=arg(=1)] (=0)   Infer haplotype paths using read  and fragment information."
    k_lib_sequence_matching: "(=0)         Use klib smith-waterman aligner."
    km_er_sequence_matching: "(=0)         Use kmer aligner."
    log_async: "(=0)                      Enable / disable async logging."
    log_file: "Log to a file instead of stderr."
    log_level: "(=info)                   Set log level (error, warning,  info)."
    arg_manifest_bam: "[ --manifest ] arg                     Manifest of samples with path and  bam stats."
    arg_maximum_number: "[ --max-reads-per-event ] arg (=10000) Maximum number of reads to process  for a single event."
    arg_output_file: "[ --output-file ] arg                  Output file name. Will output to  stdout if omitted or '-'."
    arg_output_folder_path: "[ --output-folder ] arg                Output folder path. paragraph will  attempt to create the folder but  not the entire path. Will output to stdout if neither of output-file or output-folder provided. If  specified, paragraph will produce  one output file for each input file bearing the same name."
    path_sequence_matching: "(=0)         Enables alignment to paths"
    progress: "[=arg(=1)] (=1)"
    arg_reference_genome: "[ --reference ] arg                    Reference genome fasta file."
    response_file: "file with more command line  arguments"
    arg_number_threads: "[ --sample-threads ] arg (=8)          Number of threads for parallel  sample processing."
    print_program_version: "[ --version ]                          print program version information"
  }
}