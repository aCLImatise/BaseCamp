version 1.0

task IvarGetmasked {
  input {
    Boolean? required_input_filtered
    Boolean? required_bed_file
    Boolean? required_primer_pair
    File? required_prefix_output
  }
  command <<<
    ivar getmasked \
      ~{if (required_input_filtered) then "-i" else ""} \
      ~{if (required_bed_file) then "-b" else ""} \
      ~{if (required_primer_pair) then "-f" else ""} \
      ~{if (required_prefix_output) then "-p" else ""}
  >>>
  parameter_meta {
    required_input_filtered: "(Required) Input filtered variants tsv generated from `ivar filtervariants`"
    required_bed_file: "(Required) BED file with primer sequences and positions"
    required_primer_pair: "(Required) Primer pair information file containing left and right primer names for the same amplicon separated by a tab"
    required_prefix_output: "(Required) Prefix for the output text file"
  }
  output {
    File out_stdout = stdout()
    File out_required_prefix_output = "${in_required_prefix_output}"
  }
}