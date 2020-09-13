version 1.0

task IvarRemovereads {
  input {
    Boolean? required_input_bam
    File? required_text_file
    Boolean? required_bed_file
    File? required_prefix_output
  }
  command <<<
    ivar removereads \
      ~{if (required_input_bam) then "-i" else ""} \
      ~{if (required_text_file) then "-t" else ""} \
      ~{if (required_bed_file) then "-b" else ""} \
      ~{if (required_prefix_output) then "-p" else ""}
  >>>
  parameter_meta {
    required_input_bam: "(Required) Input BAM file  trimmed with ‘ivar trim’. Must be sorted which can be done using `samtools sort`."
    required_text_file: "(Required) Text file with primer indices separated by spaces. This is the output of `getmasked` command."
    required_bed_file: "(Required) BED file with primer sequences and positions."
    required_prefix_output: "(Required) Prefix for the output filtered BAM file"
  }
  output {
    File out_stdout = stdout()
    File out_required_text_file = "${in_required_text_file}"
    File out_required_prefix_output = "${in_required_prefix_output}"
  }
}