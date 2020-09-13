version 1.0

task Fastasplitter {
  input {
    String? n_parts
    Int? part_size
    Boolean? measure
    Boolean? line_length
    Boolean? eol
    Int? part_num_prefix
    Directory? out_dir
    Boolean? no_pad
    File file
  }
  command <<<
    fasta_splitter \
      ~{file} \
      ~{if defined(n_parts) then ("--n-parts " +  '"' + n_parts + '"') else ""} \
      ~{if defined(part_size) then ("--part-size " +  '"' + part_size + '"') else ""} \
      ~{if (measure) then "--measure" else ""} \
      ~{if (line_length) then "--line-length" else ""} \
      ~{if (eol) then "--eol" else ""} \
      ~{if defined(part_num_prefix) then ("--part-num-prefix " +  '"' + part_num_prefix + '"') else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (no_pad) then "--nopad" else ""}
  >>>
  parameter_meta {
    n_parts: "- Divide into <N> parts"
    part_size: "- Divide into parts of size <N>"
    measure: "(all|seq|count) - Specify whether all data, sequence length, or\\nnumber of sequences is used for determining part\\nsizes ('all' by default)."
    line_length: "- Set output sequence line length, 0 for single line\\n(default: 60)."
    eol: "(dos|mac|unix) - Choose end-of-line character ('unix' by default)."
    part_num_prefix: "- Put T before part number in file names (def.: .part-)"
    out_dir: "- Specify output directory."
    no_pad: "- Don't pad part numbers with 0."
    file: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
  }
}