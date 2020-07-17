version 1.0

task DeSALT {
  input {
    Boolean? thread
    Boolean? index_km_er
    Boolean? seeding_l_mer
    Boolean? local_hash_km_er
    Boolean? seed_step
    Boolean? batch_size
    Boolean? max_uni_pos
    Boolean? max_read_len
    Boolean? min_frag_dis
    Boolean? max_intron_len
    Boolean? min_chain_score
    Boolean? strand_diff
    Boolean? max_read_gap
    Boolean? secondary_ratio
    Boolean? e_shift
    Boolean? trans_strand
    Boolean? gtf
    Boolean? read_type
    Boolean? open_pen
    Boolean? ext_pen
    Boolean? match_score
    Boolean? mis_score
    Boolean? z_drop
    Boolean? band_width
    Boolean? non_can
    Boolean? top_num_aln
    Boolean? without_qual
    Boolean? temp_file_per_fix
    Boolean? var_output
  }
  command <<<
    deSALT \
      ~{true="--thread" false="" thread} \
      ~{true="--index-kmer" false="" index_km_er} \
      ~{true="--seeding-lmer" false="" seeding_l_mer} \
      ~{true="--local-hash-kmer" false="" local_hash_km_er} \
      ~{true="--seed-step" false="" seed_step} \
      ~{true="--batch-size" false="" batch_size} \
      ~{true="--max-uni-pos" false="" max_uni_pos} \
      ~{true="--max-readlen" false="" max_read_len} \
      ~{true="--min-frag-dis" false="" min_frag_dis} \
      ~{true="--max-intron-len" false="" max_intron_len} \
      ~{true="--min-chain-score" false="" min_chain_score} \
      ~{true="--strand-diff" false="" strand_diff} \
      ~{true="--max-read-gap" false="" max_read_gap} \
      ~{true="--secondary-ratio" false="" secondary_ratio} \
      ~{true="--e-shift" false="" e_shift} \
      ~{true="--trans-strand" false="" trans_strand} \
      ~{true="--gtf" false="" gtf} \
      ~{true="--read-type" false="" read_type} \
      ~{true="--open-pen" false="" open_pen} \
      ~{true="--ext-pen" false="" ext_pen} \
      ~{true="--match-score" false="" match_score} \
      ~{true="--mis-score" false="" mis_score} \
      ~{true="--zdrop" false="" z_drop} \
      ~{true="--band-width" false="" band_width} \
      ~{true="--noncan" false="" non_can} \
      ~{true="--top-num-aln" false="" top_num_aln} \
      ~{true="--without-qual" false="" without_qual} \
      ~{true="--temp-file-perfix" false="" temp_file_per_fix} \
      ~{true="--output" false="" var_output}
  >>>
  parameter_meta {
    thread: "[INT]    Number of threads. [4]"
    index_km_er: "[INT]    K-mer length of RdBG-index. [22]"
    seeding_l_mer: "[INT]    K-mer length of seeding process (no long than RdBG-index). [15]"
    local_hash_km_er: "[INT]    K-mer length of local hash process. [8]"
    seed_step: "[INT]    The interval of seeding. [5]"
    batch_size: "[INT]    The number of reads to be processed in one loop. [100000]"
    max_uni_pos: "[INT]    Maximum allowed number of hits per seed. [50]"
    max_read_len: "[INT]    Maximum allowed read length. [1000000]"
    min_frag_dis: "[INT]    Maximum allowed distance of two fragment can be connect. [20]"
    max_intron_len: "[INT]    maximum allowed intron length. [200000]"
    min_chain_score: "[INT]    minimal skeleton score(match bases minus gap penalty). [20]"
    strand_diff: "[INT]    The minimal difference of dp score by two strand to make sure the transcript strand. [20]"
    max_read_gap: "[INT]    Maximum allowed gap in read when chaining. [2000]"
    secondary_ratio: "[FLOAT]  Min secondary-to-primary score ratio. [0.90]"
    e_shift: "[INT]    The number of downstream (upstream) exons will be processed when left (right) extension. [5]"
    trans_strand: "Find splicing sites according to transcript strand"
    gtf: "[STR]    Provided annotation information for precise intron donor and acceptor sites. Convert GTF file(now support GTF format only) to fixed format of deSALT by Annotation_Load.py "
    read_type: "[STR]    Specifiy the type of reads and set multiple paramters unless overriden. [null] default parameters. ccs (PacBio SMRT CCS reads): error rate 1% clr (PacBio SMRT CLR reads): error rate 15% ont1d (Oxford Nanopore 1D reads): error rate > 20% ont2d (Oxford Nanopore 2D reads): error rate > 12%"
    open_pen: "[INT(,INT)] Gap open penealty. [2,32]"
    ext_pen: "[INT(,INT)] Gap extension penalty; a k-long gap costs min{O1+k*E1,O2+k*E2}. [1,0]"
    match_score: "[INT]    Match score for SW-alginment. [1]"
    mis_score: "[INT]    Mismatch score for SW-alignment. [2]"
    z_drop: "[INT(,INT)] Z-drop score for splice/non-splice alignment. [400]"
    band_width: "[INT]    Bandwidth used in chaining and DP-based alignment. [500]"
    non_can: "[INT]    Penalty score for non-canonical splice junction sites. [9]"
    top_num_aln: "[INT]    Max allowed number of secondary alignment. [4]"
    without_qual: "Don't output base quality in SAM"
    temp_file_per_fix: "[STR]    Route of temporary files after the first-pass alignment. [1pass_anchor] If you run more than one deSALT program in the same time,  you must point out different routes of temporary files for each program!!! If no, every deSALT program will write temporary data to the same file which  will cause crash of program in 2-pass alignment due to inconsistent temporary data."
    var_output: "[STR]    Output file (SAM format). [./aln.sam]"
  }
}