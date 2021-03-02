version 1.0

task SequenceSample {
  input {
    Boolean? paired
    File? write_output_sequences
    Int? coverage
    String? genome_size
    String? reads
    String? pairs
    String? fraction
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
      ~{if defined(write_output_sequences) then ("-output " +  '"' + write_output_sequences + '"') else ""} \
      ~{if defined(coverage) then ("-coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(genome_size) then ("-genomesize " +  '"' + genome_size + '"') else ""} \
      ~{if defined(reads) then ("-reads " +  '"' + reads + '"') else ""} \
      ~{if defined(pairs) then ("-pairs " +  '"' + pairs + '"') else ""} \
      ~{if defined(fraction) then ("-fraction " +  '"' + fraction + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    paired: "treat inputs as paired sequences; the first two files form the\\nfirst pair, and so on."
    write_output_sequences: "write output sequences to file O.  If paired, two files must be supplied."
    coverage: "output C coverage of sequences, based on genome size G."
    genome_size: "output B bases."
    reads: "output R reads."
    pairs: "output P pairs (only if -paired)."
    fraction: "output fraction F of the input bases."
    sequence: ""
    mode: ""
    sequence_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_write_output_sequences = "${in_write_output_sequences}"
  }
}