version 1.0

task OptimizeAugustuspl {
  input {
    String? meta_pars
    Int? rounds
    Int? cpus
    File? only_train
    Int? k_fold
    Int? p_step
    Directory? augustus_config_path
    Array[String] opt_trans_matrix
    File? matrix_constraints
    String? utr
    File? aug_exec_dir
    Int? train_only_utr
    Int? not_rain_pars
    Int? sens_spec_bias
    Int? nice
    Int? cleanup
    Int? stop_codon_excluded_from_cds
    File? eval_exec_dir
    String? eval_against
    Int? chunksize
    File? dbaccess
    Directory? jg
    Directory? jg_exec_dir
    String prefix_species_name
    String train_dot_gb
    String prefix_model_species
    String tree_dot_nwk
    String aln_dot_maf
    String genomes_dot_tbl
    String eval_dot_gtf
  }
  command <<<
    optimize_augustus_pl \
      ~{prefix_species_name} \
      ~{train_dot_gb} \
      ~{prefix_model_species} \
      ~{tree_dot_nwk} \
      ~{aln_dot_maf} \
      ~{genomes_dot_tbl} \
      ~{eval_dot_gtf} \
      ~{if defined(meta_pars) then ("--metapars " +  '"' + meta_pars + '"') else ""} \
      ~{if defined(rounds) then ("--rounds " +  '"' + rounds + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{if defined(only_train) then ("--onlytrain " +  '"' + only_train + '"') else ""} \
      ~{if defined(k_fold) then ("--kfold " +  '"' + k_fold + '"') else ""} \
      ~{if defined(p_step) then ("--pstep " +  '"' + p_step + '"') else ""} \
      ~{if defined(augustus_config_path) then ("--AUGUSTUS_CONFIG_PATH " +  '"' + augustus_config_path + '"') else ""} \
      ~{if defined(opt_trans_matrix) then ("--opt_trans_matrix " +  '"' + opt_trans_matrix + '"') else ""} \
      ~{if defined(matrix_constraints) then ("--matrix_constraints " +  '"' + matrix_constraints + '"') else ""} \
      ~{if defined(utr) then ("--UTR " +  '"' + utr + '"') else ""} \
      ~{if defined(aug_exec_dir) then ("--aug_exec_dir " +  '"' + aug_exec_dir + '"') else ""} \
      ~{if defined(train_only_utr) then ("--trainOnlyUtr " +  '"' + train_only_utr + '"') else ""} \
      ~{if defined(not_rain_pars) then ("--noTrainPars " +  '"' + not_rain_pars + '"') else ""} \
      ~{if defined(sens_spec_bias) then ("--sens_spec_bias " +  '"' + sens_spec_bias + '"') else ""} \
      ~{if defined(nice) then ("--nice " +  '"' + nice + '"') else ""} \
      ~{if defined(cleanup) then ("--cleanup " +  '"' + cleanup + '"') else ""} \
      ~{if defined(stop_codon_excluded_from_cds) then ("--stopCodonExcludedFromCDS " +  '"' + stop_codon_excluded_from_cds + '"') else ""} \
      ~{if defined(eval_exec_dir) then ("--eval_exec_dir " +  '"' + eval_exec_dir + '"') else ""} \
      ~{if defined(eval_against) then ("--eval_against " +  '"' + eval_against + '"') else ""} \
      ~{if defined(chunksize) then ("--chunksize " +  '"' + chunksize + '"') else ""} \
      ~{if defined(dbaccess) then ("--dbaccess " +  '"' + dbaccess + '"') else ""} \
      ~{if defined(jg) then ("--jg " +  '"' + jg + '"') else ""} \
      ~{if defined(jg_exec_dir) then ("--jg_exec_dir " +  '"' + jg_exec_dir + '"') else ""}
  >>>
  parameter_meta {
    meta_pars: "metapars.cfg contains the names and their ranges of the\\nmeta parameters that are subject to optimization.\\n(default: generic_metapars.cfg)"
    rounds: "r is the number of rounds (default: 5)"
    cpus: "n is the number of CPUs to use (default: 1)"
    only_train: "an optional genbank file that is used in addition to train.gb\\nbut only for etrain not for intermediate evaluation of accuracy.\\nThese genes may e.g. be incomplete."
    k_fold: "Make a k-fold cross validation (default: 8)"
    p_step: "For integer and floating parameters start with p tests equidistributed\\nin the allowed range of values (default: 5)"
    augustus_config_path: "Specify the config directory d if not set as environment variable"
    opt_trans_matrix: "/species/nt/generic/generic_trans_shadow_partial.pbl"
    matrix_constraints: "A file with try list, normed list and bindings."
    utr: "Turn untranslated region model on for training and prediction."
    aug_exec_dir: "Path to augustus and etraining executable. If not specified\\nit must be in \\$PATH environment variable."
    train_only_utr: "Use this option, if the exon, intron and intergenic models need not be trained. (default: 0)"
    not_rain_pars: "Use this option, if the parameters to optimize do not affect training. The training step (etraining) is omitted completely. (default: 0)"
    sens_spec_bias: "increase sensitivity weight by factor f. (default: 1)"
    nice: "execute all time consuming system calls with bash nice (default nice level)\\nDefault value for execution of optmize_augustus.pl is --nice=0."
    cleanup: "Delete tmp_opt_* folder after optimization (default: 0)"
    stop_codon_excluded_from_cds: "Use this option, if the stop codons are excluded from the CDS features in 'eval.gtf' (default: 0)."
    eval_exec_dir: "Directory that contains the executable evaluate_gtf.pl from the eval package.\\nIf not specified it must be in \\$PATH environment variable."
    eval_against: "s is the species identifier to which 'eval.gtf' belongs to. Caution, if not specified, the\\nreference species in the alignment (first s-line in Maf block) is assumed."
    chunksize: "when more than 1 CPU is used, the alignment is split into multiple smaller alignments each approximately covering a\\nsequence range of length n (in the reference genome). The prediction step is executed in parallel on these chunks (default: 5000000)."
    dbaccess: "retrieve genomes either from a MySQL or from an SQLITE database. In the SQLITE case, 'db' is a database file\\nwith extension .db, e.g. --dbaccess=vertebrates.db. In the MySQL case, 'db' is a string that contains the connection\\ninformation, e.g. --dbaccess=dbname,host,user,passwd (the parameter --speciesfilenames is not required, here)."
    jg: "Use this option, if you want to filter out duplicates from the prediction with the external tool 'joingenes' (default: 0,\\nhowever --jg=1 is recommended). The tool 'joingenes' is part of the augustus package and can be found in the 'auxprogs' folder."
    jg_exec_dir: "Directory that contains the exectuable 'joingenes' (only required when --jg=1)"
    prefix_species_name: "prefix of the species name"
    train_dot_gb: "genbank file for training with bona fide gene structures"
    prefix_model_species: "prefix of the model species"
    tree_dot_nwk: "a phylogenetic tree of the species in NEWICK format"
    aln_dot_maf: "an alignment of the genomes in MAF format"
    genomes_dot_tbl: "a text file containing the locations of the genomes. Each line starts with the species identifier\\nfollowed by the location of the corresponding genome file, e.g.\\nhg19 /path/to/human/genome.fa\\nmm9  /path/to/mouse/genome.fa\\n..."
    eval_dot_gtf: "annotation file in GTF format. Accuracy values are computed by comparing the predictions against this reference set."
  }
  output {
    File out_stdout = stdout()
    Directory out_jg = "${in_jg}"
  }
}