version 1.0

task IvarRemovereads {
  input {
    Boolean? required_input_bam
    Boolean? required_text_file
    Boolean? required_bed_file
    Boolean? required_prefix_output
  }
  command <<<
    ivar removereads \
      ~{true="-i" false="" required_input_bam} \
      ~{true="-t" false="" required_text_file} \
      ~{true="-b" false="" required_bed_file} \
      ~{true="-p" false="" required_prefix_output}
  >>>
  parameter_meta {
    required_input_bam: "(Required) Input BAM file  trimmed with ‘ivar trim’. Must be sorted which can be done using `samtools sort`."
    required_text_file: "(Required) Text file with primer indices separated by spaces. This is the output of `getmasked` command."
    required_bed_file: "(Required) BED file with primer sequences and positions."
    required_prefix_output: "(Required) Prefix for the output filtered BAM file"
  }
}