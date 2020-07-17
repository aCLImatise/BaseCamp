version 1.0

task ChiraMerge.py {
  input {
    Boolean? _bed_input
    Boolean? _outdir_path
    Boolean? _gtf_annotation
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
    chira_merge.py \
      ~{true="-b" false="" _bed_input} \
      ~{true="-o" false="" _outdir_path} \
      ~{true="-g" false="" _gtf_annotation} \
      ~{true="-ao" false="" ao} \
      ~{true="-so" false="" so} \
      ~{true="-lt" false="" lt} \
      ~{true="-d" false="" _distance_blockbuster} \
      ~{true="-mc" false="" mc} \
      ~{true="-mb" false="" mb} \
      ~{true="-sc" false="" sc} \
      ~{true="-co" false="" co} \
      ~{true="-f1" false="" fone} \
      ~{true="-f2" false="" f_two} \
      ~{true="--chimeric_only" false="" chimeric_only} \
      ~{true="-ls" false="" ls}
  >>>
  parameter_meta {
    _bed_input: ", --bed            Input BED file with alignments (default: None)"
    _outdir_path: ", --outdir         Output directory path for the whole analysis (default: None)"
    _gtf_annotation: ", --gtf            Annotation GTF file (default: None)"
    ao: ", --alignment_overlap  Minimum percentage overlap among BED entries inorder to merge. [0-1.0] (default: 0.7)"
    so: ", --segment_overlap  Matching read positions with greater than this % overlap are merged into a segment (default: 0.7)"
    lt: ", --length_threshold  Minimum length of the alignments to consider as a fraction of longest alignmnet. [0.8-1.0] (default: 0.9)"
    _distance_blockbuster: ", --distance       Blockbuster parameter distance (default: 30)"
    mc: ", --min_cluster_height  Blockbuster parameter minClusterHeight (default: 10)"
    mb: ", --min_block_height  Blockbuster parameter minBlockHeight (default: 10)"
    sc: ", --scale         Blockbuster parameter scale (default: 0.1)"
    co: ", --chimeric_overlap  Maximum number of bases allowed between the chimeric segments of a read (default: 2)"
    fone: ", --ref_fasta1    First prioroty fasta file (default: None)"
    f_two: ", --ref_fasta2    second priority fasta file (default: None)"
    chimeric_only: "Consider chimeric reads only for merging (default: False)"
    ls: ", --min_locus_size  Minimum number of alignments required per mered locus (default: 1)"
  }
}