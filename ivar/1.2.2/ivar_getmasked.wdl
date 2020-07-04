version 1.0

task IvarGetmasked {
  input {
    Boolean? required_input_filtered
    Boolean? required_bed_file
    Boolean? required_primer_pair
    Boolean? required_prefix_output
  }
  command <<<
    ivar getmasked \
      ~{true="-i" false="" required_input_filtered} \
      ~{true="-b" false="" required_bed_file} \
      ~{true="-f" false="" required_primer_pair} \
      ~{true="-p" false="" required_prefix_output}
  >>>
  parameter_meta {
    required_input_filtered: "(Required) Input filtered variants tsv generated from `ivar filtervariants`"
    required_bed_file: "(Required) BED file with primer sequences and positions"
    required_primer_pair: "(Required) Primer pair information file containing left and right primer names for the same amplicon separated by a tab"
    required_prefix_output: "(Required) Prefix for the output text file"
  }
}