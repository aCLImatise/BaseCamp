version 1.0

task Idxdepth {
  input {
    Boolean? arg_bam_cram
    File? bam_index
    File? arg_output_file
    Boolean? arg_output_binned
    Boolean? arg_fasta_reference
    Int? alt_contig
    Boolean? arg_regex_identify
    Int? auto_some_regex
    String? sex_chromosome_regex
    Int? threads
    File? log_file
    Int? log_async
    String estimation_dot
  }
  command <<<
    idxdepth \
      ~{estimation_dot} \
      ~{if (arg_bam_cram) then "-b" else ""} \
      ~{if defined(bam_index) then ("--bam-index " +  '"' + bam_index + '"') else ""} \
      ~{if (arg_output_file) then "-o" else ""} \
      ~{if (arg_output_binned) then "-O" else ""} \
      ~{if (arg_fasta_reference) then "-r" else ""} \
      ~{if defined(alt_contig) then ("--altcontig " +  '"' + alt_contig + '"') else ""} \
      ~{if (arg_regex_identify) then "-I" else ""} \
      ~{if defined(auto_some_regex) then ("--autosome-regex " +  '"' + auto_some_regex + '"') else ""} \
      ~{if defined(sex_chromosome_regex) then ("--sex-chromosome-regex " +  '"' + sex_chromosome_regex + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(log_async) then ("--log-async " +  '"' + log_async + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arg_bam_cram: "[ --bam ] arg                      BAM / CRAM input file"
    bam_index: "BAM / CRAM index file when not at\\ndefault location."
    arg_output_file: "[ --output ] arg                   Output file name. Will output to stdout\\nif omitted."
    arg_output_binned: "[ --output-bins ] arg              Output binned coverage in tsv format."
    arg_fasta_reference: "[ --reference ] arg                FASTA with reference genome"
    alt_contig: "(=0)                  Include ALT contigs in estimation"
    arg_regex_identify: "[ --include-regex ] arg            Regex to identify contigs to include"
    auto_some_regex: "(=(chr)?[1-9][0-9]?)\\nRegex to identify autosome chromosome\\nnames (default: '(chr)?[1-9][0-9]?'"
    sex_chromosome_regex: "(=(chr)?[XY]?)\\nRegex to identify sex chromosome names\\n(default: '(chr)?[XY]?'"
    threads: "(=8)                    Number of threads to use for parallel"
    log_file: "Log to a file instead of stderr."
    log_async: "(=1)                  Enable / disable async logging."
    estimation_dot: "--log-level arg (=info)               Set log level (error, warning, info)."
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_file = "${in_arg_output_file}"
  }
}