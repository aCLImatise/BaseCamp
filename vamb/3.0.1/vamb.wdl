version 1.0

task Vamb {
  input {
    Boolean? output_directory_create
    Boolean? fast_a
    Boolean? t_nfs
    Boolean? names
    Boolean? lengths
    Boolean? bam_files
    Boolean? rp_km
    Boolean? jgi
    Boolean? ignore_contigs_shorter
    Boolean? ignore_reads_alignment
    Boolean? ignore_reads_nucleotide
    Boolean? number_subprocesses_spawn
    Boolean? no_ref_check
    Boolean? min_fast_a
    Boolean? n
    Boolean? latent_neurons
    Boolean? alpha_weight_tnf
    Boolean? beta_capacity_learn
    Boolean? dropout
    Boolean? cuda
    Boolean? epochs
    Boolean? starting_batch_size
    Boolean? q
    Boolean? learning_rate
    Boolean? size_count_successes
    Boolean? minimum_success_window
    Boolean? minimum_cluster_size
    Boolean? stop_c_clusters
    Boolean? binsplit_separator
    String var_29
    String tnf_input
    String rp_km_input
  }
  command <<<
    vamb \
      ~{var_29} \
      ~{tnf_input} \
      ~{rp_km_input} \
      ~{true="--outdir" false="" output_directory_create} \
      ~{true="--fasta" false="" fast_a} \
      ~{true="--tnfs" false="" t_nfs} \
      ~{true="--names" false="" names} \
      ~{true="--lengths" false="" lengths} \
      ~{true="--bamfiles" false="" bam_files} \
      ~{true="--rpkm" false="" rp_km} \
      ~{true="--jgi" false="" jgi} \
      ~{true="-m" false="" ignore_contigs_shorter} \
      ~{true="-s" false="" ignore_reads_alignment} \
      ~{true="-z" false="" ignore_reads_nucleotide} \
      ~{true="-p" false="" number_subprocesses_spawn} \
      ~{true="--norefcheck" false="" no_ref_check} \
      ~{true="--minfasta" false="" min_fast_a} \
      ~{true="-n" false="" n} \
      ~{true="-l" false="" latent_neurons} \
      ~{true="-a" false="" alpha_weight_tnf} \
      ~{true="-b" false="" beta_capacity_learn} \
      ~{true="-d" false="" dropout} \
      ~{true="--cuda" false="" cuda} \
      ~{true="-e" false="" epochs} \
      ~{true="-t" false="" starting_batch_size} \
      ~{true="-q" false="" q} \
      ~{true="-r" false="" learning_rate} \
      ~{true="-w" false="" size_count_successes} \
      ~{true="-u" false="" minimum_success_window} \
      ~{true="-i" false="" minimum_cluster_size} \
      ~{true="-c" false="" stop_c_clusters} \
      ~{true="-o" false="" binsplit_separator}
  >>>
  parameter_meta {
    output_directory_create: "output directory to create"
    fast_a: "path to fasta file"
    t_nfs: "path to .npz of TNF"
    names: "path to .npz of names of sequences"
    lengths: "path to .npz of seq lengths"
    bam_files: "[ ...]  paths to (multiple) BAM files"
    rp_km: "path to .npz of RPKM"
    jgi: "path to output of jgi_summarize_bam_contig_depths"
    ignore_contigs_shorter: "ignore contigs shorter than this [100]"
    ignore_reads_alignment: "ignore reads with alignment score below this [None]"
    ignore_reads_nucleotide: "ignore reads with nucleotide identity below this [None]"
    number_subprocesses_spawn: "number of subprocesses to spawn [min(8, nbamfiles)]"
    no_ref_check: "skip reference name hashing check [False]"
    min_fast_a: "minimum bin size to output as fasta [None = no files]"
    n: "[ ...]          hidden neurons [Auto]"
    latent_neurons: "latent neurons [32]"
    alpha_weight_tnf: "alpha, weight of TNF versus depth loss [Auto]"
    beta_capacity_learn: "beta, capacity to learn [200.0]"
    dropout: "dropout [Auto]"
    cuda: "use GPU to train & cluster [False]"
    epochs: "epochs [500]"
    starting_batch_size: "starting batch size [64]"
    q: "[ [ ...]]        double batch size at epochs [25 75 150 300]"
    learning_rate: "learning rate [0.001]"
    size_count_successes: "size of window to count successes [200]"
    minimum_success_window: "minimum success in window [20]"
    minimum_cluster_size: "minimum cluster size [1]"
    stop_c_clusters: "stop after c clusters [None = infinite]"
    binsplit_separator: "binsplit separator [None = no split]"
    var_29: ""
    tnf_input: ""
    rp_km_input: ""
  }
}