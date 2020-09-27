version 1.0

task Grmpy {
  input {
    Directory? arg_output_folder
    Float? bad_align_frac
    Int? bad_align_uniq_km_er_len
    Boolean? arg_json_file
    File? gzipcompress_output_files
    Boolean? help_defaults
    Boolean? help_md
    Boolean? infer_read_haplotypes
    Int? k_lib_sequence_matching
    Int? km_er_sequence_matching
    Int? log_async
    File? log_file
    String? log_level
    Boolean? arg_manifest_samples
    Boolean? arg_maximum_number
    File? arg_output_file
    Boolean? arg_folder_paragraph
    File? path_sequence_matching
    Boolean? arg_reference_genome
    File? response_file
    Boolean? print_program_version
    String parameters
    String alignment
    String arguments
  }
  command <<<
    grmpy \
      ~{parameters} \
      ~{alignment} \
      ~{arguments} \
      ~{if (arg_output_folder) then "-A" else ""} \
      ~{if defined(bad_align_frac) then ("--bad-align-frac " +  '"' + bad_align_frac + '"') else ""} \
      ~{if defined(bad_align_uniq_km_er_len) then ("--bad-align-uniq-kmer-len " +  '"' + bad_align_uniq_km_er_len + '"') else ""} \
      ~{if (arg_json_file) then "-G" else ""} \
      ~{if (gzipcompress_output_files) then "-z" else ""} \
      ~{if (help_defaults) then "--help-defaults" else ""} \
      ~{if (help_md) then "--help-md" else ""} \
      ~{if (infer_read_haplotypes) then "--infer-read-haplotypes" else ""} \
      ~{if defined(k_lib_sequence_matching) then ("--klib-sequence-matching " +  '"' + k_lib_sequence_matching + '"') else ""} \
      ~{if defined(km_er_sequence_matching) then ("--kmer-sequence-matching " +  '"' + km_er_sequence_matching + '"') else ""} \
      ~{if defined(log_async) then ("--log-async " +  '"' + log_async + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if (arg_manifest_samples) then "-m" else ""} \
      ~{if (arg_maximum_number) then "-M" else ""} \
      ~{if (arg_output_file) then "-o" else ""} \
      ~{if (arg_folder_paragraph) then "-O" else ""} \
      ~{if defined(path_sequence_matching) then ("--path-sequence-matching " +  '"' + path_sequence_matching + '"') else ""} \
      ~{if (arg_reference_genome) then "-r" else ""} \
      ~{if defined(response_file) then ("--response-file " +  '"' + response_file + '"') else ""} \
      ~{if (print_program_version) then "-v" else ""}
  >>>
  parameter_meta {
    arg_output_folder: "[ --alignment-output-folder ] arg      Output folder for alignments. Note\\nthese can become very large and are\\nonly requiredfor curation /\\nvisualisation or faster reanalysis."
    bad_align_frac: "(=0.800000012)       Fraction of read that needs to be\\nmapped in order for it to be used."
    bad_align_uniq_km_er_len: "(=0)        Kmer length for uniqueness check\\nduring read filtering."
    arg_json_file: "[ --genotyping-parameters ] arg        JSON file with genotyping model"
    gzipcompress_output_files: "[ --gzip-output ] [=arg(=1)] (=0)      gzip-compress output files. If -O\\nis used, output file names are\\nappended with .gz"
    help_defaults: "produce tab-delimited list of\\ncommand line options and their\\ndefault values"
    help_md: "produce help message pre-formatted\\nas a markdown file section and exit"
    infer_read_haplotypes: "[=arg(=1)] (=0)   Infer haplotype paths using read\\nand fragment information."
    k_lib_sequence_matching: "(=0)         Use klib smith-waterman aligner."
    km_er_sequence_matching: "(=0)         Use kmer aligner."
    log_async: "(=0)                      Enable / disable async logging."
    log_file: "Log to a file instead of stderr."
    log_level: "(=info)                   Set log level (error, warning,\\ninfo)."
    arg_manifest_samples: "[ --manifest ] arg                     Manifest of samples with path and\\nbam stats."
    arg_maximum_number: "[ --max-reads-per-event ] arg (=10000) Maximum number of reads to process\\nfor a single event."
    arg_output_file: "[ --output-file ] arg                  Output file name. Will output to\\nstdout if omitted or '-'."
    arg_folder_paragraph: "[ --output-folder ] arg                Output folder path. paragraph will\\nattempt to create the folder but\\nnot the entire path. Will output to\\nstdout if neither of output-file or\\noutput-folder provided. If\\nspecified, paragraph will produce\\none output file for each input file\\nbearing the same name."
    path_sequence_matching: "(=0)         Enables alignment to paths"
    arg_reference_genome: "[ --reference ] arg                    Reference genome fasta file."
    response_file: "file with more command line"
    print_program_version: "[ --version ]                          print program version information"
    parameters: "--graph-sequence-matching arg (=1)        Enables smith waterman graph "
    alignment: "-g [ --graph-spec ] arg                   JSON file(s) describing the "
    arguments: "-t [ --sample-threads ] arg (=8)          Number of threads for parallel "
  }
  output {
    File out_stdout = stdout()
    Directory out_arg_output_folder = "${in_arg_output_folder}"
    File out_gzipcompress_output_files = "${in_gzipcompress_output_files}"
    File out_arg_output_file = "${in_arg_output_file}"
  }
}