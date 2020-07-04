version 1.0

task FastaSplitter {
  input {
    String? n_parts
    String? part_size
    Boolean? measure
    Boolean? line_length
    Boolean? eol
    String? part_num_prefix
    Boolean? out_dir
    Boolean? no_pad
  }
  command <<<
    fasta-splitter \
      ~{if defined(n_parts) then ("--n-parts " +  '"' + n_parts + '"') else ""} \
      ~{if defined(part_size) then ("--part-size " +  '"' + part_size + '"') else ""} \
      ~{true="--measure" false="" measure} \
      ~{true="--line-length" false="" line_length} \
      ~{true="--eol" false="" eol} \
      ~{if defined(part_num_prefix) then ("--part-num-prefix " +  '"' + part_num_prefix + '"') else ""} \
      ~{true="--out-dir" false="" out_dir} \
      ~{true="--nopad" false="" no_pad}
  >>>
  parameter_meta {
    n_parts: "- Divide into <N> parts"
    part_size: "- Divide into parts of size <N>"
    measure: "(all|seq|count) - Specify whether all data, sequence length, or number of sequences is used for determining part sizes ('all' by default)."
    line_length: "- Set output sequence line length, 0 for single line (default: 60)."
    eol: "(dos|mac|unix) - Choose end-of-line character ('unix' by default)."
    part_num_prefix: "- Put T before part number in file names (def.: .part-)"
    out_dir: "- Specify output directory."
    no_pad: "- Don't pad part numbers with 0."
  }
}