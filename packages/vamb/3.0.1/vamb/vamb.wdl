version 1.0

task Vamb {
  input {
    Directory? output_directory_create
    Boolean? fast_a
    Boolean? t_nfs
    Boolean? names
    Boolean? lengths
    Boolean? bam_files
    Boolean? rp_km
    File? jgi
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
      ~{if (output_directory_create) then "--outdir" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (t_nfs) then "--tnfs" else ""} \
      ~{if (names) then "--names" else ""} \
      ~{if (lengths) then "--lengths" else ""} \
      ~{if (bam_files) then "--bamfiles" else ""} \
      ~{if (rp_km) then "--rpkm" else ""} \
      ~{if (jgi) then "--jgi" else ""} \
      ~{if (ignore_contigs_shorter) then "-m" else ""} \
      ~{if (ignore_reads_alignment) then "-s" else ""} \
      ~{if (ignore_reads_nucleotide) then "-z" else ""} \
      ~{if (number_subprocesses_spawn) then "-p" else ""} \
      ~{if (no_ref_check) then "--norefcheck" else ""} \
      ~{if (min_fast_a) then "--minfasta" else ""} \
      ~{if (n) then "-n" else ""} \
      ~{if (latent_neurons) then "-l" else ""} \
      ~{if (alpha_weight_tnf) then "-a" else ""} \
      ~{if (beta_capacity_learn) then "-b" else ""} \
      ~{if (dropout) then "-d" else ""} \
      ~{if (cuda) then "--cuda" else ""} \
      ~{if (epochs) then "-e" else ""} \
      ~{if (starting_batch_size) then "-t" else ""} \
      ~{if (q) then "-q" else ""} \
      ~{if (learning_rate) then "-r" else ""} \
      ~{if (size_count_successes) then "-w" else ""} \
      ~{if (minimum_success_window) then "-u" else ""} \
      ~{if (minimum_cluster_size) then "-i" else ""} \
      ~{if (stop_c_clusters) then "-c" else ""} \
      ~{if (binsplit_separator) then "-o" else ""}
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
  output {
    File out_stdout = stdout()
    Directory out_output_directory_create = "${in_output_directory_create}"
    File out_jgi = "${in_jgi}"
  }
}