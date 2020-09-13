version 1.0

task CutUpFastapy {
  input {
    Int? chunk_size
    Int? overlap_size
    Boolean? merge_last
    File? bed_file
    String contigs
  }
  command <<<
    cut_up_fasta_py \
      ~{contigs} \
      ~{if defined(chunk_size) then ("--chunk_size " +  '"' + chunk_size + '"') else ""} \
      ~{if defined(overlap_size) then ("--overlap_size " +  '"' + overlap_size + '"') else ""} \
      ~{if (merge_last) then "--merge_last" else ""} \
      ~{if defined(bed_file) then ("--bedfile " +  '"' + bed_file + '"') else ""}
  >>>
  parameter_meta {
    chunk_size: "Chunk size"
    overlap_size: "Overlap size"
    merge_last: "Concatenate final part to last contig"
    bed_file: "BEDfile to be created with exact regions of the\\noriginal contigs corresponding to the newly created\\ncontigs\\n"
    contigs: "Fasta files with contigs"
  }
  output {
    File out_stdout = stdout()
  }
}