version 1.0

task Pam {
  input {
    Boolean? arg_input_bam
    Boolean? arg_json_file
    Boolean? arg_output_file
    Boolean? arg_commaseparated_list
    String? output_node_coverage
    Boolean? arg_output_alignments_read
    Boolean? arg_output_alignments_even
    Boolean? arg_write_information
    Boolean? arg_maximum_number
    Boolean? arg_fasta_reference
    String? log_level
    String? log_file
    String? log_async
  }
  command <<<
    pam \
      ~{true="-b" false="" arg_input_bam} \
      ~{true="-g" false="" arg_json_file} \
      ~{true="-o" false="" arg_output_file} \
      ~{true="-T" false="" arg_commaseparated_list} \
      ~{if defined(output_node_coverage) then ("--output-node-coverage " +  '"' + output_node_coverage + '"') else ""} \
      ~{true="-a" false="" arg_output_alignments_read} \
      ~{true="-A" false="" arg_output_alignments_even} \
      ~{true="-E" false="" arg_write_information} \
      ~{true="-M" false="" arg_maximum_number} \
      ~{true="-r" false="" arg_fasta_reference} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(log_async) then ("--log-async " +  '"' + log_async + '"') else ""}
  >>>
  parameter_meta {
    arg_input_bam: "[ --bam ] arg                      Input BAM file for read extraction"
    arg_json_file: "[ --depth-spec ] arg               JSON file describing the regions for  depth extraction"
    arg_output_file: "[ --output ] arg                   Output file name. Will output to stdout if omitted."
    arg_commaseparated_list: "[ --target-regions ] arg           Comma-separated list of target regions, e.g. chr1:1-20,chr2:2-40. This  overrides the target regions in the  depth spec."
    output_node_coverage: "(=0)       Output coverage for nodes"
    arg_output_alignments_read: "[ --output-alignments ] arg (=0)   Output alignments for every read  (large)."
    arg_output_alignments_even: "[ --output-filtered-alignments ] arg (=0) Output alignments for every read even  when it was filtered (larger)."
    arg_write_information: "[ --output-everything ] arg (=0)   Write all information we have into  JSON. (=enable all --output-* above)"
    arg_maximum_number: "[ --max-reads-per-event ] arg (=10000) Maximum number of reads to process for  a single event."
    arg_fasta_reference: "[ --reference ] arg                FASTA with reference genome"
    log_level: "(=info)               Set log level (error, warning, info)."
    log_file: "Log to a file instead of stderr."
    log_async: "(=1)                  Enable / disable async logging."
  }
}