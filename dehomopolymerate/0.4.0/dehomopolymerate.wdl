version 1.0

task Dehomopolymerate {
  input {
    Boolean? print_version_exit
    Boolean? quiet_mode_output
    Boolean? output_fasta_fastq
    Boolean? output_raw_one
    String? discard_output_sequences
  }
  command <<<
    dehomopolymerate \
      ~{true="-v" false="" print_version_exit} \
      ~{true="-q" false="" quiet_mode_output} \
      ~{true="-f" false="" output_fasta_fastq} \
      ~{true="-w" false="" output_raw_one} \
      ~{if defined(discard_output_sequences) then ("-l " +  '"' + discard_output_sequences + '"') else ""}
  >>>
  parameter_meta {
    print_version_exit: "Print version and exit"
    quiet_mode_output: "Quiet mode; not non-error output"
    output_fasta_fastq: "Output FASTA not FASTQ"
    output_raw_one: "Output RAW one line per sequence"
    discard_output_sequences: "Discard output sequences shorter then L bp"
  }
}