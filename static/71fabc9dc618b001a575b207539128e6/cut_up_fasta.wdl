version 1.0

task CutUpFasta.py {
  input {
    String? chunk_size
    String? overlap_size
    Boolean? merge_last
    String? bed_file
    String contigs
  }
  command <<<
    cut_up_fasta.py \
      ~{contigs} \
      ~{if defined(chunk_size) then ("--chunk_size " +  '"' + chunk_size + '"') else ""} \
      ~{if defined(overlap_size) then ("--overlap_size " +  '"' + overlap_size + '"') else ""} \
      ~{true="--merge_last" false="" merge_last} \
      ~{if defined(bed_file) then ("--bedfile " +  '"' + bed_file + '"') else ""}
  >>>
  parameter_meta {
    chunk_size: "Chunk size"
    overlap_size: "Overlap size"
    merge_last: "Concatenate final part to last contig"
    bed_file: "BEDfile to be created with exact regions of the original contigs corresponding to the newly created contigs"
    contigs: "Fasta files with contigs"
  }
}