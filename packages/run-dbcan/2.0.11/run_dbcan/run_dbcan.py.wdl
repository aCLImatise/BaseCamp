version 1.0

task RunDbcanpy {
  input {
    File? cluster
    File? db_can_file
    String? dia_eval
    Int? dia_cpu
    String? hmm_eval
    String? hmm_cov
    Int? hmm_cpu
    String? hot_pep_hits
    String? hot_pep_freq
    Int? hot_pep_cpu
    String? tf_eval
    String? tf_cov
    Int? tf_cpu
    String? stp_cov
    Int? stp_cpu
    Directory? out_dir
    Directory? db_dir
    String? cgc_dis
    String? cgc_sig_genes
    String? tools
    String? use_signalp
    String? gram
    String input_file
  }
  command <<<
    run_dbcan_py \
      ~{input_file} \
      ~{if defined(cluster) then ("--cluster " +  '"' + cluster + '"') else ""} \
      ~{if defined(db_can_file) then ("--dbCANFile " +  '"' + db_can_file + '"') else ""} \
      ~{if defined(dia_eval) then ("--dia_eval " +  '"' + dia_eval + '"') else ""} \
      ~{if defined(dia_cpu) then ("--dia_cpu " +  '"' + dia_cpu + '"') else ""} \
      ~{if defined(hmm_eval) then ("--hmm_eval " +  '"' + hmm_eval + '"') else ""} \
      ~{if defined(hmm_cov) then ("--hmm_cov " +  '"' + hmm_cov + '"') else ""} \
      ~{if defined(hmm_cpu) then ("--hmm_cpu " +  '"' + hmm_cpu + '"') else ""} \
      ~{if defined(hot_pep_hits) then ("--hotpep_hits " +  '"' + hot_pep_hits + '"') else ""} \
      ~{if defined(hot_pep_freq) then ("--hotpep_freq " +  '"' + hot_pep_freq + '"') else ""} \
      ~{if defined(hot_pep_cpu) then ("--hotpep_cpu " +  '"' + hot_pep_cpu + '"') else ""} \
      ~{if defined(tf_eval) then ("--tf_eval " +  '"' + tf_eval + '"') else ""} \
      ~{if defined(tf_cov) then ("--tf_cov " +  '"' + tf_cov + '"') else ""} \
      ~{if defined(tf_cpu) then ("--tf_cpu " +  '"' + tf_cpu + '"') else ""} \
      ~{if defined(stp_cov) then ("--stp_cov " +  '"' + stp_cov + '"') else ""} \
      ~{if defined(stp_cpu) then ("--stp_cpu " +  '"' + stp_cpu + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(db_dir) then ("--db_dir " +  '"' + db_dir + '"') else ""} \
      ~{if defined(cgc_dis) then ("--cgc_dis " +  '"' + cgc_dis + '"') else ""} \
      ~{if defined(cgc_sig_genes) then ("--cgc_sig_genes " +  '"' + cgc_sig_genes + '"') else ""} \
      ~{if defined(tools) then ("--tools " +  '"' + tools + '"') else ""} \
      ~{if defined(use_signalp) then ("--use_signalP " +  '"' + use_signalp + '"') else ""} \
      ~{if defined(gram) then ("--gram " +  '"' + gram + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/run-dbcan:2.0.11--pyh3252c3a_0"
  }
  parameter_meta {
    cluster: "Predict CGCs via CGCFinder. This argument requires an\\nauxillary locations file if a protein input is being\\nused"
    db_can_file: "Indicate the file name of HMM database such as\\ndbCAN.txt, please use the newest one from dbCAN2\\nwebsite."
    dia_eval: "DIAMOND E Value"
    dia_cpu: "Number of CPU cores that DIAMOND is allowed to use"
    hmm_eval: "HMMER E Value"
    hmm_cov: "HMMER Coverage val"
    hmm_cpu: "Number of CPU cores that HMMER is allowed to use"
    hot_pep_hits: "Hotpep Hit value"
    hot_pep_freq: "Hotpep Frequency value"
    hot_pep_cpu: "Number of CPU cores that Hotpep is allowed to use"
    tf_eval: "tf.hmm HMMER E Value"
    tf_cov: "tf.hmm HMMER Coverage val"
    tf_cpu: "tf.hmm Number of CPU cores that HMMER is allowed to"
    stp_cov: "stp.hmm HMMER Coverage val"
    stp_cpu: "stp.hmm Number of CPU cores that HMMER is allowed to"
    out_dir: "Output directory"
    db_dir: "Database directory"
    cgc_dis: "CGCFinder Distance value"
    cgc_sig_genes: "CGCFinder Signature Genes value"
    tools: "[{hmmer,diamond,hotpep,all} ...], -t {hmmer,diamond,hotpep,all} [{hmmer,diamond,hotpep,all} ...]\\nChoose a combination of tools to run"
    use_signalp: "Use signalP or not, remember, you need to setup\\nsignalP tool first. Because of signalP license, Docker\\nversion does not have signalP."
    gram: "Choose gram+(p) or gram-(n) for proteome/prokaryote\\nnucleotide, which are params of SingalP, only if user\\nuse singalP\\n"
    input_file: "User input file. Must be in FASTA format."
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
  }
}