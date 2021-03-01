version 1.0

task GdtoolsMUMMER2MASK {
  input {
    File? reference
    File? output_genome_diff
    Int? padding
    Int? merge
    Int? minimum
  }
  command <<<
    gdtools MUMMER2MASK \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(output_genome_diff) then ("--output " +  '"' + output_genome_diff + '"') else ""} \
      ~{if defined(padding) then ("--padding " +  '"' + padding + '"') else ""} \
      ~{if defined(merge) then ("--merge " +  '"' + merge + '"') else ""} \
      ~{if defined(minimum) then ("--minimum " +  '"' + minimum + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference: "File containing reference sequences in GenBank, GFF3, or FASTA format. Option may be provided multiple times for multiple files (REQUIRED)"
    output_genome_diff: "Output Genome Diff file. (DEFAULT=output.gd)"
    padding: "Additional padding to add to each end of every MASK region. (DEFAULT=0)"
    merge: "Merge regions if they are within this distance (before adding padding). (DEFAULT=0)"
    minimum: "Minimum size of a region after padding and merging to remain in the MASK list. (DEFAULT=0)"
  }
  output {
    File out_stdout = stdout()
    File out_output_genome_diff = "${in_output_genome_diff}"
  }
}