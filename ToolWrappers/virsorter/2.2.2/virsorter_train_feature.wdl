version 1.0

task VirsorterTrainfeature {
  input {
    Directory? working_dir
    File? seq_file
    File? hmm
    File? hallmark
    File? prodigal_train
    Int? frags_per_genome
    Int? jobs
    Int? min_length
    Int? max_orf_per_seq
    Boolean? genome_as_bin
    Boolean? use_cond_a_off
    String? snake_make_args
  }
  command <<<
    virsorter train_feature \
      ~{snake_make_args} \
      ~{if defined(working_dir) then ("--working-dir " +  '"' + working_dir + '"') else ""} \
      ~{if defined(seq_file) then ("--seqfile " +  '"' + seq_file + '"') else ""} \
      ~{if defined(hmm) then ("--hmm " +  '"' + hmm + '"') else ""} \
      ~{if defined(hallmark) then ("--hallmark " +  '"' + hallmark + '"') else ""} \
      ~{if defined(prodigal_train) then ("--prodigal-train " +  '"' + prodigal_train + '"') else ""} \
      ~{if defined(frags_per_genome) then ("--frags-per-genome " +  '"' + frags_per_genome + '"') else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(max_orf_per_seq) then ("--max-orf-per-seq " +  '"' + max_orf_per_seq + '"') else ""} \
      ~{if (genome_as_bin) then "--genome-as-bin" else ""} \
      ~{if (use_cond_a_off) then "--use-conda-off" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/virsorter:2.2.2--pyhdfd78af_0"
  }
  parameter_meta {
    working_dir: "output directory  [required]"
    seq_file: "genome sequence file for training; for file\\npattern globbing, put quotes around the pattern,\\neg. \\\"fasta-dir/*.fa\\\"  [required]"
    hmm: "customized viral HMMs for training; default to\\nthe one used in VirSorter2"
    hallmark: "hallmark gene hmm list from -hmm for training (a\\ntab separated file with three columns: 1. hmm\\nname, 2. gene name of hmm, 3. hmm bit score\\ncutoff); default to the one used for dsDNAphage\\nin VirSorter2"
    prodigal_train: "customized training db from prodigal; default to\\nthe one used in prodigal --meta mode"
    frags_per_genome: "number of random DNA fragments collected from\\neach genome  [default: 5]"
    jobs: "max # of jobs in parallel  [default: 2]"
    min_length: "minimum size of random DNA fragment for training\\n[default: 1000]"
    max_orf_per_seq: "Max # of orf used for computing taxonomic\\nfeatures; if # of orf in a seq exceeds the max\\nlimit, it is sub-sampled to this # to reduce\\ncomputation; to turn off this, set it to -1\\n[default: 20]"
    genome_as_bin: "if applied, each file (genome bin) is a genome\\nin --seqfile, else each sequence is a genome\\n[default: False]"
    use_cond_a_off: "Stop using the conda envs (vs2.yaml) that come\\nwith this package and use what are installed in\\ncurrent system; Only useful when you want to\\ninstall dependencies on your own with your own\\npreferred versions  [default: False]"
    snake_make_args: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_working_dir = "${in_working_dir}"
  }
}