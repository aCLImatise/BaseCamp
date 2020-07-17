version 1.0

task AugmentBam {
  input {
    File? augment_output_records
    Boolean? invoke_command_output
    File? write_output_bam
    Boolean? augment_records_pairs
  }
  command <<<
    augment-bam \
      ~{if defined(augment_output_records) then ("-a " +  '"' + augment_output_records + '"') else ""} \
      ~{true="-c" false="" invoke_command_output} \
      ~{if defined(write_output_bam) then ("-o " +  '"' + write_output_bam + '"') else ""} \
      ~{true="-p" false="" augment_records_pairs}
  >>>
  parameter_meta {
    augment_output_records: "Augment output records with original fields from FILE (required)"
    invoke_command_output: "Invoke a command for its output rather than reading FILE"
    write_output_bam: "Write output BAM file to FILE rather than standard output"
    augment_records_pairs: "Augment records in pairs (input files must be grouped by name)"
  }
}