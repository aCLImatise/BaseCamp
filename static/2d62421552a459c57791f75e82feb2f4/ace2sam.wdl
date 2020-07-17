version 1.0

task Ace2sam {
  input {
    Boolean? output_padded_sam
    Boolean? write_contig_sequence
    Boolean? pc
    String in_dot_ace
  }
  command <<<
    ace2sam \
      ~{in_dot_ace} \
      ~{true="-p" false="" output_padded_sam} \
      ~{true="-c" false="" write_contig_sequence} \
      ~{true="-pc" false="" pc}
  >>>
  parameter_meta {
    output_padded_sam: "output padded SAM"
    write_contig_sequence: "write the contig sequence in SAM"
    pc: ""
    in_dot_ace: ""
  }
}