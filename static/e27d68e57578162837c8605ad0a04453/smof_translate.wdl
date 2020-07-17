version 1.0

task SmofTranslate {
  input {
    Boolean? from_start
    Boolean? all_frames
    Boolean? cds
    String input_fasta_sequence
  }
  command <<<
    smof translate \
      ~{input_fasta_sequence} \
      ~{true="--from-start" false="" from_start} \
      ~{true="--all-frames" false="" all_frames} \
      ~{true="--cds" false="" cds}
  >>>
  parameter_meta {
    from_start: "Require each product begin with a start codon"
    all_frames: "Translate in all frames, keep longest"
    cds: "Write the DNA coding sequence"
    input_fasta_sequence: "input fasta sequence (default = stdin)"
  }
}