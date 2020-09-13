version 1.0

task DeSALT {
  input {
    File? temporary_file_storing
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
    File? temp_file_per_fix
    File? var_output
  }
  command <<<
    deSALT \
      ~{if defined(temporary_file_storing) then ("-f " +  '"' + temporary_file_storing + '"') else ""} \
      ~{if (thread) then "--thread" else ""} \
      ~{if (index_km_er) then "--index-kmer" else ""} \
      ~{if (seeding_l_mer) then "--seeding-lmer" else ""} \
      ~{if (local_hash_km_er) then "--local-hash-kmer" else ""} \
      ~{if (seed_step) then "--seed-step" else ""} \
      ~{if (batch_size) then "--batch-size" else ""} \
      ~{if (max_uni_pos) then "--max-uni-pos" else ""} \
      ~{if (max_read_len) then "--max-readlen" else ""} \
      ~{if (min_frag_dis) then "--min-frag-dis" else ""} \
      ~{if (max_intron_len) then "--max-intron-len" else ""} \
      ~{if (min_chain_score) then "--min-chain-score" else ""} \
      ~{if (strand_diff) then "--strand-diff" else ""} \
      ~{if (max_read_gap) then "--max-read-gap" else ""} \
      ~{if (secondary_ratio) then "--secondary-ratio" else ""} \
      ~{if (e_shift) then "--e-shift" else ""} \
      ~{if (trans_strand) then "--trans-strand" else ""} \
      ~{if (gtf) then "--gtf" else ""} \
      ~{if (read_type) then "--read-type" else ""} \
      ~{if (open_pen) then "--open-pen" else ""} \
      ~{if (ext_pen) then "--ext-pen" else ""} \
      ~{if (match_score) then "--match-score" else ""} \
      ~{if (mis_score) then "--mis-score" else ""} \
      ~{if (z_drop) then "--zdrop" else ""} \
      ~{if (band_width) then "--band-width" else ""} \
      ~{if (non_can) then "--noncan" else ""} \
      ~{if (top_num_aln) then "--top-num-aln" else ""} \
      ~{if (without_qual) then "--without-qual" else ""} \
      ~{if (temp_file_per_fix) then "--temp-file-perfix" else ""} \
      ~{if (var_output) then "--output" else ""}
  >>>
  parameter_meta {
    temporary_file_storing: "The temporary file for storing alignment skeletons in first pass.\\nIf users run two deSALT program in the same time, -f option is necessary."
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
    gtf: "[STR]    Provided annotation information for precise intron donor and acceptor sites.\\nConvert GTF file(now support GTF format only) to fixed format of deSALT by Annotation_Load.py"
    read_type: "[STR]    Specifiy the type of reads and set multiple paramters unless overriden.\\n[null] default parameters.\\nccs (PacBio SMRT CCS reads): error rate 1%\\nclr (PacBio SMRT CLR reads): error rate 15%\\nont1d (Oxford Nanopore 1D reads): error rate > 20%\\nont2d (Oxford Nanopore 2D reads): error rate > 12%"
    open_pen: "[INT(,INT)]\\nGap open penealty. [2,32]"
    ext_pen: "[INT(,INT)]\\nGap extension penalty; a k-long gap costs min{O1+k*E1,O2+k*E2}. [1,0]"
    match_score: "[INT]    Match score for SW-alginment. [1]"
    mis_score: "[INT]    Mismatch score for SW-alignment. [2]"
    z_drop: "[INT(,INT)]\\nZ-drop score for splice/non-splice alignment. [400]"
    band_width: "[INT]    Bandwidth used in chaining and DP-based alignment. [500]"
    non_can: "[INT]    Penalty score for non-canonical splice junction sites. [9]"
    top_num_aln: "[INT]    Max allowed number of secondary alignment. [4]"
    without_qual: "Don't output base quality in SAM"
    temp_file_per_fix: "[STR]    Route of temporary files after the first-pass alignment. [1pass_anchor]\\nIf you run more than one deSALT program in the same time,\\nyou must point out different routes of temporary files for each program!!!\\nIf no, every deSALT program will write temporary data to the same file which\\nwill cause crash of program in 2-pass alignment due to inconsistent temporary data."
    var_output: "[STR]    Output file (SAM format). [./aln.sam]"
  }
  output {
    File out_stdout = stdout()
    File out_temp_file_per_fix = "${in_temp_file_per_fix}"
    File out_var_output = "${in_var_output}"
  }
}