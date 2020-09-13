version 1.0

task RnazMAF2BEDpl {
  input {
    Boolean? seq_id
    Boolean? cluster
    Boolean? man
  }
  command <<<
    rnazMAF2BED_pl \
      ~{if (seq_id) then "--seq-id" else ""} \
      ~{if (cluster) then "--cluster" else ""} \
      ~{if (man) then "--man" else ""}
  >>>
  parameter_meta {
    seq_id: "Specify the sequence identifier of the sequence which should be\\nused as a reference to create the output. Use for example \\\"hg17\\\"\\nif you want to get all sequences containing \\\"hg17\\\" in the\\nidenitfier (e.g. \\\"hg17.chr10\\\", \\\"hg17.chr22\\\",...). If this option\\nis omitted, the first sequence identifier of the first sequence\\nin the first alignment block is used."
    cluster: "Combine overlapping alignments and report non-overlapping\\nregions in the BED output."
    man: "Prints a detailed manual page and exits."
  }
  output {
    File out_stdout = stdout()
  }
}