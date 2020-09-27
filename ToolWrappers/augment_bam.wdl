version 1.0

task Augmentbam {
  input {
    File? augment_output_records
    File? invoke_command_reading
    File? write_bam_file
    Boolean? augment_records_pairs
  }
  command <<<
    augment_bam \
      ~{if defined(augment_output_records) then ("-a " +  '"' + augment_output_records + '"') else ""} \
      ~{if (invoke_command_reading) then "-c" else ""} \
      ~{if defined(write_bam_file) then ("-o " +  '"' + write_bam_file + '"') else ""} \
      ~{if (augment_records_pairs) then "-p" else ""}
  >>>
  parameter_meta {
    augment_output_records: "Augment output records with original fields from FILE (required)"
    invoke_command_reading: "Invoke a command for its output rather than reading FILE"
    write_bam_file: "Write output BAM file to FILE rather than standard output"
    augment_records_pairs: "Augment records in pairs (input files must be grouped by name)"
  }
  output {
    File out_stdout = stdout()
    File out_augment_output_records = "${in_augment_output_records}"
    File out_invoke_command_reading = "${in_invoke_command_reading}"
    File out_write_bam_file = "${in_write_bam_file}"
  }
}