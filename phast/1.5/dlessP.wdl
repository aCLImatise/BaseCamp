version 1.0

task DlessP {
  input {
    String? refseq
    String? ref_idx
    File? timing
    String? html
    String alignment
    String tree_dot_mod
    String predictions_dot_gff
  }
  command <<<
    dlessP \
      ~{alignment} \
      ~{tree_dot_mod} \
      ~{predictions_dot_gff} \
      ~{if defined(refseq) then ("--refseq " +  '"' + refseq + '"') else ""} \
      ~{if defined(ref_idx) then ("--refidx " +  '"' + ref_idx + '"') else ""} \
      ~{if defined(timing) then ("--timing " +  '"' + timing + '"') else ""} \
      ~{if defined(html) then ("--html " +  '"' + html + '"') else ""}
  >>>
  parameter_meta {
    refseq: "(for use with --msa-format MAF) Read the complete text of the reference sequence from <fname> (FASTA format) and combine it with the contents of the MAF file to produce a complete, ordered representation of the alignment.  The reference sequence of the MAF file is assumed to be the one that appears first in each block."
    ref_idx: "Use coordinate frame of specified sequence in output.  Default value is 1, first sequence in alignment; 0 indicates coordinate frame of entire multiple alignment."
    timing: "Write timing data to <file>."
    html: "Create a directory and write one HTML file into it per DLESS prediction, giving the stats for that prediction."
    alignment: ""
    tree_dot_mod: ""
    predictions_dot_gff: ""
  }
}