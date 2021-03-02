version 1.0

task Raxmlngmpi {
  input {
    Boolean? evaluate
    Boolean? search
    Boolean? bootstrap
    Boolean? all
    Boolean? support
    Boolean? bs_converge
    Boolean? bsms_a
    Boolean? terrace
    Boolean? check
    Boolean? parse
    Boolean? start
    Boolean? rf_dist
    Boolean? con_sense
    Boolean? ancestral
    Boolean? search_one
    Boolean? log_lh
    Boolean? rf
    Boolean? tree
    Boolean? msa
    Boolean? msa_format
    Boolean? data_type
    File? tree_constraint
    File? prefix
    Boolean? log
    Boolean? redo
    Boolean? no_files
    Boolean? precision
    Boolean? out_group
    Boolean? seed
    Boolean? pat_comp
    Boolean? tip_inner
    Int? site_repeats
    Boolean? threads
    Boolean? simd
    Int? rate_scalers
    Boolean? force
    Boolean? model
    Boolean? br_len
    Boolean? blm_in
    Boolean? bl_max
    Boolean? bl_opt
    Boolean? opt_model
    String? opt_branches
    Boolean? prob_msa
    Boolean? lh_epsilon
    Boolean? spr_radius
    Boolean? spr_cut_off
    Boolean? bs_cut_off
    Boolean? bs_metric
    String ra_xml_ng
  }
  command <<<
    raxml_ng_mpi \
      ~{ra_xml_ng} \
      ~{if (evaluate) then "--evaluate" else ""} \
      ~{if (search) then "--search" else ""} \
      ~{if (bootstrap) then "--bootstrap" else ""} \
      ~{if (all) then "--all" else ""} \
      ~{if (support) then "--support" else ""} \
      ~{if (bs_converge) then "--bsconverge" else ""} \
      ~{if (bsms_a) then "--bsmsa" else ""} \
      ~{if (terrace) then "--terrace" else ""} \
      ~{if (check) then "--check" else ""} \
      ~{if (parse) then "--parse" else ""} \
      ~{if (start) then "--start" else ""} \
      ~{if (rf_dist) then "--rfdist" else ""} \
      ~{if (con_sense) then "--consense" else ""} \
      ~{if (ancestral) then "--ancestral" else ""} \
      ~{if (search_one) then "--search1" else ""} \
      ~{if (log_lh) then "--loglh" else ""} \
      ~{if (rf) then "--rf" else ""} \
      ~{if (tree) then "--tree" else ""} \
      ~{if (msa) then "--msa" else ""} \
      ~{if (msa_format) then "--msa-format" else ""} \
      ~{if (data_type) then "--data-type" else ""} \
      ~{if defined(tree_constraint) then ("--tree-constraint " +  '"' + tree_constraint + '"') else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (log) then "--log" else ""} \
      ~{if (redo) then "--redo" else ""} \
      ~{if (no_files) then "--nofiles" else ""} \
      ~{if (precision) then "--precision" else ""} \
      ~{if (out_group) then "--outgroup" else ""} \
      ~{if (seed) then "--seed" else ""} \
      ~{if (pat_comp) then "--pat-comp" else ""} \
      ~{if (tip_inner) then "--tip-inner" else ""} \
      ~{if defined(site_repeats) then ("--site-repeats " +  '"' + site_repeats + '"') else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (simd) then "--simd" else ""} \
      ~{if defined(rate_scalers) then ("--rate-scalers " +  '"' + rate_scalers + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (model) then "--model" else ""} \
      ~{if (br_len) then "--brlen" else ""} \
      ~{if (blm_in) then "--blmin" else ""} \
      ~{if (bl_max) then "--blmax" else ""} \
      ~{if (bl_opt) then "--blopt" else ""} \
      ~{if (opt_model) then "--opt-model" else ""} \
      ~{if defined(opt_branches) then ("--opt-branches " +  '"' + opt_branches + '"') else ""} \
      ~{if (prob_msa) then "--prob-msa" else ""} \
      ~{if (lh_epsilon) then "--lh-epsilon" else ""} \
      ~{if (spr_radius) then "--spr-radius" else ""} \
      ~{if (spr_cut_off) then "--spr-cutoff" else ""} \
      ~{if (bs_cut_off) then "--bs-cutoff" else ""} \
      ~{if (bs_metric) then "--bs-metric" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    evaluate: "evaluate the likelihood of a tree (with model+brlen optimization)"
    search: "ML tree search (default: 10 parsimony + 10 random starting trees)"
    bootstrap: "bootstrapping (default: use bootstopping to auto-detect #replicates)"
    all: "all-in-one (ML search + bootstrapping)"
    support: "compute bipartition support for a given reference tree (e.g., best ML tree)\\nand a set of replicate trees (e.g., from a bootstrap analysis)"
    bs_converge: "test for bootstrapping convergence using autoMRE criterion"
    bsms_a: "generate bootstrap replicate MSAs"
    terrace: "check whether a tree lies on a phylogenetic terrace"
    check: "check alignment correctness and remove empty columns/rows"
    parse: "parse alignment, compress patterns and create binary MSA file"
    start: "generate parsimony/random starting trees and exit"
    rf_dist: "compute pair-wise Robinson-Foulds (RF) distances between trees"
    con_sense: "[ STRICT | MR | MR<n> | MRE ]   build strict, majority-rule (MR) or extended MR (MRE) consensus tree (default: MR)\\neg: --consense MR75 --tree bsrep.nw"
    ancestral: "ancestral state reconstruction at all inner nodes"
    search_one: "Alias for: --search --tree rand{1}"
    log_lh: "Alias for: --evaluate --opt-model off --opt-branches off --nofiles --log result"
    rf: "Alias for: --rfdist --nofiles --log result"
    tree: "rand{N} | pars{N} | FILE starting tree: rand(om), pars(imony) or user-specified (newick file)\\nN = number of trees (default: rand{10},pars{10})"
    msa: "FILE                     alignment file"
    msa_format: "VALUE                    alignment file format: FASTA, PHYLIP, CATG or AUTO-detect (default)"
    data_type: "VALUE                    data type: DNA, AA, BIN(ary) or AUTO-detect (default)"
    tree_constraint: "constraint tree"
    prefix: "STRING                   prefix for output files (default: MSA file name)"
    log: "VALUE                    log verbosity: ERROR,WARNING,RESULT,INFO,PROGRESS,DEBUG (default: PROGRESS)"
    redo: "overwrite existing result files and ignore checkpoints (default: OFF)"
    no_files: "do not create any output files, print results to the terminal only"
    precision: "VALUE                    number of decimal places to print (default: 6)"
    out_group: "o1,o2,..,oN              comma-separated list of outgroup taxon names (it's just a drawing option!)"
    seed: "VALUE                       seed for pseudo-random number generator (default: current time)"
    pat_comp: "on | off                    alignment pattern compression (default: ON)"
    tip_inner: "on | off                    tip-inner case optimization (default: OFF)"
    site_repeats: "| off                    use site repeats optimization, 10%-60% faster than tip-inner (default: ON)"
    threads: "VALUE                       number of parallel threads to use (default: 1)"
    simd: "none | sse3 | avx | avx2    vector instruction set to use (default: auto-detect)."
    rate_scalers: "| off                    use individual CLV scalers for each rate category (default: ON for >2000 taxa)"
    force: "[ <CHECKS> ]                disable safety checks (please think twice!)"
    model: "<name>+G[n]+<Freqs> | FILE  model specification OR partition file"
    br_len: "linked | scaled | unlinked  branch length linkage between partitions (default: scaled)"
    blm_in: "VALUE                       minimum branch length (default: 1e-6)"
    bl_max: "VALUE                       maximum branch length (default: 100)"
    bl_opt: "nr_fast    | nr_safe        branch length optimization method (default: nr_fast)\\nnr_oldfast | nr_oldsafe"
    opt_model: "on | off                    ML optimization of all model parameters (default: ON)"
    opt_branches: "| off                    ML optimization of all branch lengths (default: ON)"
    prob_msa: "on | off                    use probabilistic alignment (works with CATG and VCF)"
    lh_epsilon: "VALUE                       log-likelihood epsilon for optimization/tree search (default: 0.1)"
    spr_radius: "VALUE                       SPR re-insertion radius for fast iterations (default: AUTO)"
    spr_cut_off: "VALUE | off                 relative LH cutoff for descending into subtrees (default: 1.0)"
    bs_cut_off: "VALUE                       cutoff threshold for the MRE-based bootstopping criteria (default: 0.03)"
    bs_metric: "fbp | tbe                   branch support metric: fbp = Felsenstein bootstrap (default), tbe = transfer distance"
    ra_xml_ng: ""
  }
  output {
    File out_stdout = stdout()
    File out_prefix = "${in_prefix}"
  }
}