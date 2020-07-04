version 1.0

task GdtoolsMUMMER2MASK {
  input {
    String? reference
    String? output_genome_diff
    String? padding
    String? merge
    String? minimum
  }
  command <<<
    gdtools MUMMER2MASK \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(output_genome_diff) then ("--output " +  '"' + output_genome_diff + '"') else ""} \
      ~{if defined(padding) then ("--padding " +  '"' + padding + '"') else ""} \
      ~{if defined(merge) then ("--merge " +  '"' + merge + '"') else ""} \
      ~{if defined(minimum) then ("--minimum " +  '"' + minimum + '"') else ""}
  >>>
  parameter_meta {
    reference: "File containing reference sequences in GenBank, GFF3, or FASTA format. Option may be provided multiple times for multiple files (REQUIRED)"
    output_genome_diff: "Output Genome Diff file. (DEFAULT=output.gd)"
    padding: "Additional padding to add to each end of every MASK region. (DEFAULT=0)"
    merge: "Merge regions if they are within this distance (before adding padding). (DEFAULT=0)"
    minimum: "Minimum size of a region after padding and merging to remain in the MASK list. (DEFAULT=0)"
  }
}