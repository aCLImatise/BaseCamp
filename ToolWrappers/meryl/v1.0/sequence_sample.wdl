version 1.0

task SequenceSample {
  input {
    Boolean? paired
    Int? write_output_sequences
    String sequence
    String? mode
    String? sequence_file
  }
  command <<<
    sequence sample \
      ~{sequence} \
      ~{mode} \
      ~{sequence_file} \
      ~{if (paired) then "-paired" else ""} \
      ~{if defined(write_output_sequences) then ("-output " +  '"' + write_output_sequences + '"') else ""}
  >>>
  parameter_meta {
    paired: "treat inputs as paired sequences; the first two files form the\\nfirst pair, and so on."
    write_output_sequences: "write output sequences to file O.  If paired, two files must be supplied.\\n-coverage C         output C coverage of sequences, based on genome size G.\\n-genomesize G\\n-bases B            output B bases.\\n-reads R            output R reads.\\n-pairs P            output P pairs (only if -paired).\\n-fraction F         output fraction F of the input bases."
    sequence: ""
    mode: ""
    sequence_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}