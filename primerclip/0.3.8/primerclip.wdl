version 1.0

task Primerclip {
  input {
    Boolean? bed_pe
    Boolean? single_end
  }
  command <<<
    primerclip \
      ~{true="--bedpe" false="" bed_pe} \
      ~{true="--single-end" false="" single_end}
  >>>
  parameter_meta {
    bed_pe: "add this switch to use BEDPE coordinate input format (default format is master file)"
    single_end: "add this switch to trim primers from single-end alignments"
  }
}