version 1.0

task Paragraph {
  input {
    Float? bad_align_frac
    Int? bad_align_non_uniq
    Boolean? arg_input_bam
    Int? graph_sequence_matching
    Boolean? gzipcompress_output_files
    File? used_file_names
    Boolean? help_defaults
    Boolean? help_md
    Int? k_lib_sequence_matching
    Int? km_er_sequence_matching
    Int? log_async
    File? log_file
    String? log_level
    Boolean? arg_maximum_number
    Boolean? arg_output_alignments_readlarge
    Int? output_detailed_read_counts
    Boolean? arg_write_information
    File? arg_output_file
    Boolean? arg_output_alignments_readeven
    Int? output_node_coverage
    File? output_path_coverage
    Int? output_read_haplotypes
    Boolean? arg_output_variants
    File? path_sequence_matching
    Boolean? arg_fasta_file
    File? response_file
    Int? threads
    Boolean? validate_alignments
    Int? variant_min_frac
    Int? variant_min_reads
    String uniquely_dot
    String alignment
    String arguments
    String information
  }
  command <<<
    paragraph \
      ~{uniquely_dot} \
      ~{alignment} \
      ~{arguments} \
      ~{information} \
      ~{if defined(bad_align_frac) then ("--bad-align-frac " +  '"' + bad_align_frac + '"') else ""} \
      ~{if defined(bad_align_non_uniq) then ("--bad-align-nonuniq " +  '"' + bad_align_non_uniq + '"') else ""} \
      ~{if (arg_input_bam) then "-b" else ""} \
      ~{if defined(graph_sequence_matching) then ("--graph-sequence-matching " +  '"' + graph_sequence_matching + '"') else ""} \
      ~{if (gzipcompress_output_files) then "-z" else ""} \
      ~{if defined(used_file_names) then ("-O " +  '"' + used_file_names + '"') else ""} \
      ~{if (help_defaults) then "--help-defaults" else ""} \
      ~{if (help_md) then "--help-md" else ""} \
      ~{if defined(k_lib_sequence_matching) then ("--klib-sequence-matching " +  '"' + k_lib_sequence_matching + '"') else ""} \
      ~{if defined(km_er_sequence_matching) then ("--kmer-sequence-matching " +  '"' + km_er_sequence_matching + '"') else ""} \
      ~{if defined(log_async) then ("--log-async " +  '"' + log_async + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if (arg_maximum_number) then "-M" else ""} \
      ~{if (arg_output_alignments_readlarge) then "-a" else ""} \
      ~{if defined(output_detailed_read_counts) then ("--output-detailed-read-counts " +  '"' + output_detailed_read_counts + '"') else ""} \
      ~{if (arg_write_information) then "-E" else ""} \
      ~{if (arg_output_file) then "-o" else ""} \
      ~{if (arg_output_alignments_readeven) then "-A" else ""} \
      ~{if defined(output_node_coverage) then ("--output-node-coverage " +  '"' + output_node_coverage + '"') else ""} \
      ~{if defined(output_path_coverage) then ("--output-path-coverage " +  '"' + output_path_coverage + '"') else ""} \
      ~{if defined(output_read_haplotypes) then ("--output-read-haplotypes " +  '"' + output_read_haplotypes + '"') else ""} \
      ~{if (arg_output_variants) then "-v" else ""} \
      ~{if defined(path_sequence_matching) then ("--path-sequence-matching " +  '"' + path_sequence_matching + '"') else ""} \
      ~{if (arg_fasta_file) then "-r" else ""} \
      ~{if defined(response_file) then ("--response-file " +  '"' + response_file + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (validate_alignments) then "--validate-alignments" else ""} \
      ~{if defined(variant_min_frac) then ("--variant-min-frac " +  '"' + variant_min_frac + '"') else ""} \
      ~{if defined(variant_min_reads) then ("--variant-min-reads " +  '"' + variant_min_reads + '"') else ""}
  >>>
  parameter_meta {
    bad_align_frac: "(=0.800000012)          Fraction of read that needs to\\nbe mapped in order for it to be\\nused."
    bad_align_non_uniq: "(=1)                 Remove reads that are not mapped"
    arg_input_bam: "[ --bam ] arg                             Input BAM file(s) for read\\nextraction. We align all reads\\nto all graphs."
    graph_sequence_matching: "(=1)           Enables smith waterman graph"
    gzipcompress_output_files: "[ --gzip-output ] [=arg(=1)] (=0)         gzip-compress output files. If"
    used_file_names: "used, output file names"
    help_defaults: "produce tab-delimited list of\\ncommand line options and their\\ndefault values"
    help_md: "produce help message\\npre-formatted as a markdown file\\nsection and exit"
    k_lib_sequence_matching: "(=0)            Use klib smith-waterman aligner."
    km_er_sequence_matching: "(=0)            Use kmer aligner."
    log_async: "(=0)                         Enable / disable async logging."
    log_file: "Log to a file instead of stderr."
    log_level: "(=info)                      Set log level (error, warning,\\ninfo)."
    arg_maximum_number: "[ --max-reads-per-event ] arg (=10000)    Maximum number of reads to\\nprocess for a single event."
    arg_output_alignments_readlarge: "[ --output-alignments ] arg (=0)          Output alignments for every read\\n(large)."
    output_detailed_read_counts: "(=0)       Output detailed read counts not\\njust for paths but also for each\\nnode/edge on the paths."
    arg_write_information: "[ --output-everything ] arg (=0)          Write all information we have\\ninto JSON. (=enable all\\n--output-* above)"
    arg_output_file: "[ --output-file ] arg                     Output file name. Will output to\\nstdout if '-' or neither of\\noutput-file or output-folder\\nprovided."
    arg_output_alignments_readeven: "[ --output-filtered-alignments ] arg (=0) Output alignments for every read\\neven when it was filtered\\n(larger)."
    output_node_coverage: "(=0)              Output coverage for nodes"
    output_path_coverage: "(=0)              Output coverage for paths"
    output_read_haplotypes: "(=0)            Output graph haplotypes\\nsupported by reads."
    arg_output_variants: "[ --output-variants ] arg (=0)            Output variants not present in\\nthe graph."
    path_sequence_matching: "(=1)            Enable path seeding aligner"
    arg_fasta_file: "[ --reference ] arg                       Reference genome fasta file."
    response_file: "file with more command line"
    threads: "(=8)                           Number of threads to use for\\nparallel alignment."
    validate_alignments: "[=arg(=1)] (=0)        Use information in the input bam\\nread names to collect statistics\\nabout the accuracy of\\nalignments. Requires bam file\\nproduced with simulate-reads.sh"
    variant_min_frac: "(=0.00999999978)      Minimum fraction of reads\\nrequired to report a variant."
    variant_min_reads: "(=3)                 Minimum number of reads required\\nto report a variant."
    uniquely_dot: "--bad-align-uniq-kmer-len arg (=0)           Kmer length for uniqueness check"
    alignment: "-g [ --graph-spec ] arg                      JSON file(s) describing the "
    arguments: "-T [ --target-regions ] arg                  Comma-separated list of target "
    information: "Failed to parse the options: ERROR: BAM file is missing."
  }
  output {
    File out_stdout = stdout()
    File out_used_file_names = "${in_used_file_names}"
    File out_arg_output_file = "${in_arg_output_file}"
    File out_output_path_coverage = "${in_output_path_coverage}"
  }
}