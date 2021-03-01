version 1.0

task ChiraMergepy {
  input {
    Boolean? block_based
    File? outdir
    Boolean? gtf
    Boolean? alignment_overlap
    Boolean? segment_overlap
    Boolean? length_threshold
    Boolean? distance
    Boolean? min_cluster_height
    Boolean? min_block_height
    Boolean? scale
    Boolean? chimeric_overlap
    Boolean? ref_fast_a_one
    Boolean? ref_fast_a_two
    Boolean? chimeric_only
    Boolean? min_locus_size
  }
  command <<<
    chira_merge_py \
      ~{if (block_based) then "--block_based" else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (gtf) then "--gtf" else ""} \
      ~{if (alignment_overlap) then "--alignment_overlap" else ""} \
      ~{if (segment_overlap) then "--segment_overlap" else ""} \
      ~{if (length_threshold) then "--length_threshold" else ""} \
      ~{if (distance) then "--distance" else ""} \
      ~{if (min_cluster_height) then "--min_cluster_height" else ""} \
      ~{if (min_block_height) then "--min_block_height" else ""} \
      ~{if (scale) then "--scale" else ""} \
      ~{if (chimeric_overlap) then "--chimeric_overlap" else ""} \
      ~{if (ref_fast_a_one) then "--ref_fasta1" else ""} \
      ~{if (ref_fast_a_two) then "--ref_fasta2" else ""} \
      ~{if (chimeric_only) then "--chimeric_only" else ""} \
      ~{if (min_locus_size) then "--min_locus_size" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    block_based: "Input BED file with alignments (default: None)"
    outdir: "Output directory path for the whole analysis (default:\\nNone)"
    gtf: "Annotation GTF file (default: None)"
    alignment_overlap: "Minimum percentage overlap among BED entries inorder\\nto merge. [0-1.0] (default: 0.7)"
    segment_overlap: "Matching read positions with greater than this %\\noverlap are merged into a segment (default: 0.7)"
    length_threshold: "Minimum length of the alignments to consider as a\\nfraction of longest alignmnet. [0.8-1.0] (default:\\n0.9)"
    distance: "Blockbuster parameter distance (default: 30)"
    min_cluster_height: "Blockbuster parameter minClusterHeight (default: 10)"
    min_block_height: "Blockbuster parameter minBlockHeight (default: 10)"
    scale: "Blockbuster parameter scale (default: 0.1)"
    chimeric_overlap: "Maximum number of bases allowed between the chimeric\\nsegments of a read (default: 2)"
    ref_fast_a_one: "First prioroty fasta file (default: None)"
    ref_fast_a_two: "second priority fasta file (default: None)"
    chimeric_only: "Consider chimeric reads only for merging (default:\\nFalse)"
    min_locus_size: "Minimum number of alignments required per mered locus\\n(default: 1)"
  }
  output {
    File out_stdout = stdout()
    File out_outdir = "${in_outdir}"
  }
}