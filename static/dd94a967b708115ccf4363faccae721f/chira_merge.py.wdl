version 1.0

task ChiraMergepy {
  input {
    Boolean? block_based
    Boolean? _bed_input
    File? _outdir_output
    Boolean? _gtf_gtf
    Boolean? ao
    Boolean? so
    Boolean? lt
    Boolean? _distance_blockbuster
    Boolean? mc
    Boolean? mb
    Boolean? sc
    Boolean? co
    Boolean? fone
    Boolean? f_two
    Boolean? chimeric_only
    Boolean? ls
  }
  command <<<
    chira_merge_py \
      ~{if (block_based) then "--block_based" else ""} \
      ~{if (_bed_input) then "-b" else ""} \
      ~{if (_outdir_output) then "-o" else ""} \
      ~{if (_gtf_gtf) then "-g" else ""} \
      ~{if (ao) then "-ao" else ""} \
      ~{if (so) then "-so" else ""} \
      ~{if (lt) then "-lt" else ""} \
      ~{if (_distance_blockbuster) then "-d" else ""} \
      ~{if (mc) then "-mc" else ""} \
      ~{if (mb) then "-mb" else ""} \
      ~{if (sc) then "-sc" else ""} \
      ~{if (co) then "-co" else ""} \
      ~{if (fone) then "-f1" else ""} \
      ~{if (f_two) then "-f2" else ""} \
      ~{if (chimeric_only) then "--chimeric_only" else ""} \
      ~{if (ls) then "-ls" else ""}
  >>>
  parameter_meta {
    block_based: ""
    _bed_input: ", --bed            Input BED file with alignments (default: None)"
    _outdir_output: ", --outdir         Output directory path for the whole analysis (default:\\nNone)"
    _gtf_gtf: ", --gtf            Annotation GTF file (default: None)"
    ao: ", --alignment_overlap\\nMinimum percentage overlap among BED entries inorder\\nto merge. [0-1.0] (default: 0.7)"
    so: ", --segment_overlap\\nMatching read positions with greater than this %\\noverlap are merged into a segment (default: 0.7)"
    lt: ", --length_threshold\\nMinimum length of the alignments to consider as a\\nfraction of longest alignmnet. [0.8-1.0] (default:\\n0.9)"
    _distance_blockbuster: ", --distance       Blockbuster parameter distance (default: 30)"
    mc: ", --min_cluster_height\\nBlockbuster parameter minClusterHeight (default: 10)"
    mb: ", --min_block_height\\nBlockbuster parameter minBlockHeight (default: 10)"
    sc: ", --scale         Blockbuster parameter scale (default: 0.1)"
    co: ", --chimeric_overlap\\nMaximum number of bases allowed between the chimeric\\nsegments of a read (default: 2)"
    fone: ", --ref_fasta1    First prioroty fasta file (default: None)"
    f_two: ", --ref_fasta2    second priority fasta file (default: None)"
    chimeric_only: "Consider chimeric reads only for merging (default:\\nFalse)"
    ls: ", --min_locus_size\\nMinimum number of alignments required per mered locus\\n(default: 1)"
  }
  output {
    File out_stdout = stdout()
    File out__outdir_output = "${in__outdir_output}"
  }
}