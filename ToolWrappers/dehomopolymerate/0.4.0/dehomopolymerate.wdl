version 1.0

task Dehomopolymerate {
  input {
    Boolean? print_version_exit
    Boolean? quiet_mode_nonerror
    Boolean? output_fasta_fastq
    Boolean? output_raw_one
    String? discard_output_sequences
  }
  command <<<
    dehomopolymerate \
      ~{if (print_version_exit) then "-v" else ""} \
      ~{if (quiet_mode_nonerror) then "-q" else ""} \
      ~{if (output_fasta_fastq) then "-f" else ""} \
      ~{if (output_raw_one) then "-w" else ""} \
      ~{if defined(discard_output_sequences) then ("-l " +  '"' + discard_output_sequences + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    print_version_exit: "Print version and exit"
    quiet_mode_nonerror: "Quiet mode; not non-error output"
    output_fasta_fastq: "Output FASTA not FASTQ"
    output_raw_one: "Output RAW one line per sequence"
    discard_output_sequences: "Discard output sequences shorter then L bp"
  }
  output {
    File out_stdout = stdout()
  }
}