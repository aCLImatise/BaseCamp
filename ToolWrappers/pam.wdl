version 1.0

task Pam {
  input {
    Boolean? arg_bam_file
    Boolean? arg_json_file
    File? arg_output_file
    Boolean? arg_commaseparated_list
    Int? output_node_coverage
    Boolean? arg_output_alignments_readlarge
    Boolean? arg_output_alignments_read
    Boolean? arg_write_information
    Boolean? arg_maximum_number
    Boolean? arg_fasta_reference
    String? log_level
    File? log_file
    Int? log_async
  }
  command <<<
    pam \
      ~{if (arg_bam_file) then "-b" else ""} \
      ~{if (arg_json_file) then "-g" else ""} \
      ~{if (arg_output_file) then "-o" else ""} \
      ~{if (arg_commaseparated_list) then "-T" else ""} \
      ~{if defined(output_node_coverage) then ("--output-node-coverage " +  '"' + output_node_coverage + '"') else ""} \
      ~{if (arg_output_alignments_readlarge) then "-a" else ""} \
      ~{if (arg_output_alignments_read) then "-A" else ""} \
      ~{if (arg_write_information) then "-E" else ""} \
      ~{if (arg_maximum_number) then "-M" else ""} \
      ~{if (arg_fasta_reference) then "-r" else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(log_async) then ("--log-async " +  '"' + log_async + '"') else ""}
  >>>
  parameter_meta {
    arg_bam_file: "[ --bam ] arg                      Input BAM file for read extraction"
    arg_json_file: "[ --depth-spec ] arg               JSON file describing the regions for\\ndepth extraction"
    arg_output_file: "[ --output ] arg                   Output file name. Will output to stdout\\nif omitted."
    arg_commaseparated_list: "[ --target-regions ] arg           Comma-separated list of target regions,\\ne.g. chr1:1-20,chr2:2-40. This\\noverrides the target regions in the\\ndepth spec."
    output_node_coverage: "(=0)       Output coverage for nodes"
    arg_output_alignments_readlarge: "[ --output-alignments ] arg (=0)   Output alignments for every read\\n(large)."
    arg_output_alignments_read: "[ --output-filtered-alignments ] arg (=0)\\nOutput alignments for every read even\\nwhen it was filtered (larger)."
    arg_write_information: "[ --output-everything ] arg (=0)   Write all information we have into\\nJSON. (=enable all --output-* above)"
    arg_maximum_number: "[ --max-reads-per-event ] arg (=10000)\\nMaximum number of reads to process for\\na single event."
    arg_fasta_reference: "[ --reference ] arg                FASTA with reference genome"
    log_level: "(=info)               Set log level (error, warning, info)."
    log_file: "Log to a file instead of stderr."
    log_async: "(=1)                  Enable / disable async logging."
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_file = "${in_arg_output_file}"
  }
}