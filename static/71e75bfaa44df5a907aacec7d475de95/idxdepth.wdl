version 1.0

task Idxdepth {
  input {
    Boolean? arg_bam_cram
    String? bam_index
    Boolean? arg_output_file
    Boolean? arg_output_binned
    Boolean? arg_fasta_reference
    String? alt_contig
    Boolean? arg_regex_identify
    String? auto_some_regex
    String? sex_chromosome_regex
    String? threads
    String? log_level
    String? log_file
    String? log_async
  }
  command <<<
    idxdepth \
      ~{true="-b" false="" arg_bam_cram} \
      ~{if defined(bam_index) then ("--bam-index " +  '"' + bam_index + '"') else ""} \
      ~{true="-o" false="" arg_output_file} \
      ~{true="-O" false="" arg_output_binned} \
      ~{true="-r" false="" arg_fasta_reference} \
      ~{if defined(alt_contig) then ("--altcontig " +  '"' + alt_contig + '"') else ""} \
      ~{true="-I" false="" arg_regex_identify} \
      ~{if defined(auto_some_regex) then ("--autosome-regex " +  '"' + auto_some_regex + '"') else ""} \
      ~{if defined(sex_chromosome_regex) then ("--sex-chromosome-regex " +  '"' + sex_chromosome_regex + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(log_async) then ("--log-async " +  '"' + log_async + '"') else ""}
  >>>
  parameter_meta {
    arg_bam_cram: "[ --bam ] arg                      BAM / CRAM input file"
    bam_index: "BAM / CRAM index file when not at  default location."
    arg_output_file: "[ --output ] arg                   Output file name. Will output to stdout if omitted."
    arg_output_binned: "[ --output-bins ] arg              Output binned coverage in tsv format."
    arg_fasta_reference: "[ --reference ] arg                FASTA with reference genome"
    alt_contig: "(=0)                  Include ALT contigs in estimation"
    arg_regex_identify: "[ --include-regex ] arg            Regex to identify contigs to include"
    auto_some_regex: "(=(chr)?[1-9][0-9]?) Regex to identify autosome chromosome  names (default: '(chr)?[1-9][0-9]?'"
    sex_chromosome_regex: "(=(chr)?[XY]?) Regex to identify sex chromosome names  (default: '(chr)?[XY]?'"
    threads: "(=8)                    Number of threads to use for parallel  estimation."
    log_level: "(=info)               Set log level (error, warning, info)."
    log_file: "Log to a file instead of stderr."
    log_async: "(=1)                  Enable / disable async logging."
  }
}