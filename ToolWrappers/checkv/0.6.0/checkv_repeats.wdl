version 1.0

task CheckvRepeats {
  input {
    Int? min_tr_len
    Boolean? quiet
    String input_viral_sequences
    String output_directory
  }
  command <<<
    checkv repeats \
      ~{input_viral_sequences} \
      ~{output_directory} \
      ~{if defined(min_tr_len) then ("--min_tr_len " +  '"' + min_tr_len + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    min_tr_len: "Min length of TR"
    quiet: "Suppress logging messages"
    input_viral_sequences: "Input viral sequences in FASTA format"
    output_directory: "Output directory"
  }
  output {
    File out_stdout = stdout()
  }
}