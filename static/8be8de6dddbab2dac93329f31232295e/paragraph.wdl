version 1.0

task Paragraph {
  input {
    String? bad_align_frac
    String? bad_align_non_uniq
    String? bad_align_uniq_km_er_len
    Boolean? arg_input_bam
    String? graph_sequence_matching
    Boolean? arg_json_files
    Boolean? gzipcompress_output_files
    Boolean? help_defaults
    Boolean? help_md
    String? k_lib_sequence_matching
    String? km_er_sequence_matching
    String? log_async
    String? log_file
    String? log_level
    Boolean? arg_maximum_number
    Boolean? arg_output_alignments_read
    String? output_detailed_read_counts
    Boolean? arg_write_information
    Boolean? arg_output_file
    Boolean? arg_output_alignments_filtered
    Boolean? arg_folder_path
    String? output_node_coverage
    String? output_path_coverage
    String? output_read_haplotypes
    Boolean? arg_output_variants
    String? path_sequence_matching
    Boolean? arg_reference_genome
    String? response_file
    Boolean? arg_commaseparated_list
    String? threads
    Boolean? validate_alignments
    String? variant_min_frac
    String? variant_min_reads
  }
  command <<<
    paragraph \
      ~{if defined(bad_align_frac) then ("--bad-align-frac " +  '"' + bad_align_frac + '"') else ""} \
      ~{if defined(bad_align_non_uniq) then ("--bad-align-nonuniq " +  '"' + bad_align_non_uniq + '"') else ""} \
      ~{if defined(bad_align_uniq_km_er_len) then ("--bad-align-uniq-kmer-len " +  '"' + bad_align_uniq_km_er_len + '"') else ""} \
      ~{true="-b" false="" arg_input_bam} \
      ~{if defined(graph_sequence_matching) then ("--graph-sequence-matching " +  '"' + graph_sequence_matching + '"') else ""} \
      ~{true="-g" false="" arg_json_files} \
      ~{true="-z" false="" gzipcompress_output_files} \
      ~{true="--help-defaults" false="" help_defaults} \
      ~{true="--help-md" false="" help_md} \
      ~{if defined(k_lib_sequence_matching) then ("--klib-sequence-matching " +  '"' + k_lib_sequence_matching + '"') else ""} \
      ~{if defined(km_er_sequence_matching) then ("--kmer-sequence-matching " +  '"' + km_er_sequence_matching + '"') else ""} \
      ~{if defined(log_async) then ("--log-async " +  '"' + log_async + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{true="-M" false="" arg_maximum_number} \
      ~{true="-a" false="" arg_output_alignments_read} \
      ~{if defined(output_detailed_read_counts) then ("--output-detailed-read-counts " +  '"' + output_detailed_read_counts + '"') else ""} \
      ~{true="-E" false="" arg_write_information} \
      ~{true="-o" false="" arg_output_file} \
      ~{true="-A" false="" arg_output_alignments_filtered} \
      ~{true="-O" false="" arg_folder_path} \
      ~{if defined(output_node_coverage) then ("--output-node-coverage " +  '"' + output_node_coverage + '"') else ""} \
      ~{if defined(output_path_coverage) then ("--output-path-coverage " +  '"' + output_path_coverage + '"') else ""} \
      ~{if defined(output_read_haplotypes) then ("--output-read-haplotypes " +  '"' + output_read_haplotypes + '"') else ""} \
      ~{true="-v" false="" arg_output_variants} \
      ~{if defined(path_sequence_matching) then ("--path-sequence-matching " +  '"' + path_sequence_matching + '"') else ""} \
      ~{true="-r" false="" arg_reference_genome} \
      ~{if defined(response_file) then ("--response-file " +  '"' + response_file + '"') else ""} \
      ~{true="-T" false="" arg_commaseparated_list} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--validate-alignments" false="" validate_alignments} \
      ~{if defined(variant_min_frac) then ("--variant-min-frac " +  '"' + variant_min_frac + '"') else ""} \
      ~{if defined(variant_min_reads) then ("--variant-min-reads " +  '"' + variant_min_reads + '"') else ""}
  >>>
  parameter_meta {
    bad_align_frac: "(=0.800000012)          Fraction of read that needs to  be mapped in order for it to be  used."
    bad_align_non_uniq: "(=1)                 Remove reads that are not mapped uniquely."
    bad_align_uniq_km_er_len: "(=0)           Kmer length for uniqueness check during read filtering."
    arg_input_bam: "[ --bam ] arg                             Input BAM file(s) for read  extraction. We align all reads  to all graphs."
    graph_sequence_matching: "(=1)           Enables smith waterman graph  alignment"
    arg_json_files: "[ --graph-spec ] arg                      JSON file(s) describing the  graph(s)"
    gzipcompress_output_files: "[ --gzip-output ] [=arg(=1)] (=0)         gzip-compress output files. If  -O is used, output file names  are appended with .gz"
    help_defaults: "produce tab-delimited list of  command line options and their  default values"
    help_md: "produce help message  pre-formatted as a markdown file section and exit"
    k_lib_sequence_matching: "(=0)            Use klib smith-waterman aligner."
    km_er_sequence_matching: "(=0)            Use kmer aligner."
    log_async: "(=0)                         Enable / disable async logging."
    log_file: "Log to a file instead of stderr."
    log_level: "(=info)                      Set log level (error, warning,  info)."
    arg_maximum_number: "[ --max-reads-per-event ] arg (=10000)    Maximum number of reads to  process for a single event."
    arg_output_alignments_read: "[ --output-alignments ] arg (=0)          Output alignments for every read (large)."
    output_detailed_read_counts: "(=0)       Output detailed read counts not  just for paths but also for each node/edge on the paths."
    arg_write_information: "[ --output-everything ] arg (=0)          Write all information we have  into JSON. (=enable all  --output-* above)"
    arg_output_file: "[ --output-file ] arg                     Output file name. Will output to stdout if '-' or neither of  output-file or output-folder  provided."
    arg_output_alignments_filtered: "[ --output-filtered-alignments ] arg (=0) Output alignments for every read even when it was filtered  (larger)."
    arg_folder_path: "[ --output-folder ] arg                   Output folder path. paragraph  will attempt to create the  folder but not the entire path.  Will output to stdout if neither of output-file or output-folder  provided. If specified,  paragraph will produce one  output file for each input file  bearing the same name."
    output_node_coverage: "(=0)              Output coverage for nodes"
    output_path_coverage: "(=0)              Output coverage for paths"
    output_read_haplotypes: "(=0)            Output graph haplotypes  supported by reads."
    arg_output_variants: "[ --output-variants ] arg (=0)            Output variants not present in  the graph."
    path_sequence_matching: "(=1)            Enable path seeding aligner"
    arg_reference_genome: "[ --reference ] arg                       Reference genome fasta file."
    response_file: "file with more command line  arguments"
    arg_commaseparated_list: "[ --target-regions ] arg                  Comma-separated list of target  regions, e.g. chr1:1-20,chr2:2-4 0. This overrides the target  regions in the graph spec."
    threads: "(=8)                           Number of threads to use for  parallel alignment."
    validate_alignments: "[=arg(=1)] (=0)        Use information in the input bam read names to collect statistics about the accuracy of  alignments. Requires bam file  produced with simulate-reads.sh"
    variant_min_frac: "(=0.00999999978)      Minimum fraction of reads  required to report a variant."
    variant_min_reads: "(=3)                 Minimum number of reads required to report a variant."
  }
}