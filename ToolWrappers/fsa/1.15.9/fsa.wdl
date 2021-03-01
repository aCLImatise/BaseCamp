version 1.0

task Fsa {
  input {
    String? log
    File? log_file
    File? log_copy
    Boolean? log_time
    Boolean? log_xml
    Boolean? log_err
    Boolean? stockholm
    Boolean? gui
    Boolean? write_params
    Boolean? write_posteriors
    Boolean? nuc_prot
    Boolean? in_del_two
    Int? gap_open_one
    Int? gap_extend_one
    Int? gap_open_two
    Int? gap_extend_two
    Int? model
    Float? time
    Float? alpha_r
    Float? alpha_y
    Int? beta
    File? load_probs
    Boolean? learn_gap
    Boolean? learn_emit_by_pair
    Boolean? learn_emit_all
    Boolean? no_learn
    Boolean? regularize
    String? regularization_gap_scale
    String? regularization_emit_scale
    Float? min_inc
    Int? max_rounds
    Int? min_gap_data
    Int? mine_mit_data
    Int? refinement
    Boolean? max_sn
    Float? gap_factor
    Boolean? dynamic_weights
    String? tree_weights
    Boolean? require_homology
    Boolean? fast
    Boolean? re_falign
    Int? mst_min
    Int? mst_max
    Int? mst_palm
    Int? degree
    Int? km_er
    Int? alignment_fraction
    Int? alignment_number
    String? mercator
    Int? max_ram
    Int? bandwidth
    Float? min_prob
  }
  command <<<
    fsa \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if defined(log_copy) then ("--logcopy " +  '"' + log_copy + '"') else ""} \
      ~{if (log_time) then "--logtime" else ""} \
      ~{if (log_xml) then "--logxml" else ""} \
      ~{if (log_err) then "--logerr" else ""} \
      ~{if (stockholm) then "--stockholm" else ""} \
      ~{if (gui) then "--gui" else ""} \
      ~{if (write_params) then "--write-params" else ""} \
      ~{if (write_posteriors) then "--write-posteriors" else ""} \
      ~{if (nuc_prot) then "--nucprot" else ""} \
      ~{if (in_del_two) then "--indel2" else ""} \
      ~{if defined(gap_open_one) then ("--gapopen1 " +  '"' + gap_open_one + '"') else ""} \
      ~{if defined(gap_extend_one) then ("--gapextend1 " +  '"' + gap_extend_one + '"') else ""} \
      ~{if defined(gap_open_two) then ("--gapopen2 " +  '"' + gap_open_two + '"') else ""} \
      ~{if defined(gap_extend_two) then ("--gapextend2 " +  '"' + gap_extend_two + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(time) then ("--time " +  '"' + time + '"') else ""} \
      ~{if defined(alpha_r) then ("--alphar " +  '"' + alpha_r + '"') else ""} \
      ~{if defined(alpha_y) then ("--alphay " +  '"' + alpha_y + '"') else ""} \
      ~{if defined(beta) then ("--beta " +  '"' + beta + '"') else ""} \
      ~{if defined(load_probs) then ("--load-probs " +  '"' + load_probs + '"') else ""} \
      ~{if (learn_gap) then "--learngap" else ""} \
      ~{if (learn_emit_by_pair) then "--learnemit-bypair" else ""} \
      ~{if (learn_emit_all) then "--learnemit-all" else ""} \
      ~{if (no_learn) then "--nolearn" else ""} \
      ~{if (regularize) then "--regularize" else ""} \
      ~{if defined(regularization_gap_scale) then ("--regularization-gapscale " +  '"' + regularization_gap_scale + '"') else ""} \
      ~{if defined(regularization_emit_scale) then ("--regularization-emitscale " +  '"' + regularization_emit_scale + '"') else ""} \
      ~{if defined(min_inc) then ("--mininc " +  '"' + min_inc + '"') else ""} \
      ~{if defined(max_rounds) then ("--maxrounds " +  '"' + max_rounds + '"') else ""} \
      ~{if defined(min_gap_data) then ("--mingapdata " +  '"' + min_gap_data + '"') else ""} \
      ~{if defined(mine_mit_data) then ("--minemitdata " +  '"' + mine_mit_data + '"') else ""} \
      ~{if defined(refinement) then ("--refinement " +  '"' + refinement + '"') else ""} \
      ~{if (max_sn) then "--maxsn" else ""} \
      ~{if defined(gap_factor) then ("--gapfactor " +  '"' + gap_factor + '"') else ""} \
      ~{if (dynamic_weights) then "--dynamicweights" else ""} \
      ~{if defined(tree_weights) then ("--treeweights " +  '"' + tree_weights + '"') else ""} \
      ~{if (require_homology) then "--require-homology" else ""} \
      ~{if (fast) then "--fast" else ""} \
      ~{if (re_falign) then "--refalign" else ""} \
      ~{if defined(mst_min) then ("--mst-min " +  '"' + mst_min + '"') else ""} \
      ~{if defined(mst_max) then ("--mst-max " +  '"' + mst_max + '"') else ""} \
      ~{if defined(mst_palm) then ("--mst-palm " +  '"' + mst_palm + '"') else ""} \
      ~{if defined(degree) then ("--degree " +  '"' + degree + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(alignment_fraction) then ("--alignment-fraction " +  '"' + alignment_fraction + '"') else ""} \
      ~{if defined(alignment_number) then ("--alignment-number " +  '"' + alignment_number + '"') else ""} \
      ~{if defined(mercator) then ("--mercator " +  '"' + mercator + '"') else ""} \
      ~{if defined(max_ram) then ("--maxram " +  '"' + max_ram + '"') else ""} \
      ~{if defined(bandwidth) then ("--bandwidth " +  '"' + bandwidth + '"') else ""} \
      ~{if defined(min_prob) then ("--minprob " +  '"' + min_prob + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fsa:1.15.9--h8b12597_1"
  }
  parameter_meta {
    log: "turn on diagnostic logging (-loghelp shows syntax)"
    log_file: "log to file"
    log_copy: "log to file and standard error"
    log_time: "timestamp standard error (logfile stamped automatically)"
    log_xml: "(default) add XML timestamps (--nologxml to disable)"
    log_err: "log on standard error (default)"
    stockholm: "output Stockholm alignments (default is multi-FASTA format)"
    gui: "record alignment & statistical model for interactive Java GUI"
    write_params: "write learned emission distributions (substitution matrices) to disk"
    write_posteriors: "write learned pairwise posterior alignment probability matrices to disk"
    nuc_prot: "align input nucleotide sequences (must all be nucleotide) in protein space"
    in_del_two: "(default) use two sets of indel states in Pair HMM (use --noindel2 to use 1 set only)"
    gap_open_one: "initial gap-open probability (for set 1 of indel states)"
    gap_extend_one: "initial gap-extend probability (for set 1 of indel states)"
    gap_open_two: "initial gap-open probability (for set 2 of indel states)"
    gap_extend_two: "initial gap-extend probability (for set 2 of indel states)"
    model: "initial substitution model: 0 = Jukes-Cantor, 1 = Tamura-Nei / BLOSUM62-like (proteins) (default is 1)"
    time: "Jukes-Cantor/Tamura-Nei evolutionary time parameter (default is 0.4)"
    alpha_r: "Tamura-Nei rate alpha_R (transition: purine) (default is 1.3)"
    alpha_y: "Tamura-Nei rate alpha_Y (transition: pyrimidine) (default is 1.3)"
    beta: "Tamura-Nei rate beta (transversion) (default is 1)"
    load_probs: "load pairwise posterior probabilities from a file rather than performing inference with Pair HMM"
    learn_gap: "estimate indel probabilities for each pair of sequences (--nolearngap to disable)"
    learn_emit_by_pair: "(default for DNA and RNA) estimate emission probabilities for each pair of sequences (--nolearnemit-bypair to disable)"
    learn_emit_all: "(default for proteins) estimate emission probabilities averaged over all sequences (--nolearnemit-all to disable)"
    no_learn: "disable ALL parameter learning (use ProbCons defaults)"
    regularize: "(default) regularize learned emission and gap probabilities with Dirichlet prior (--noregularize to disable)"
    regularization_gap_scale: "scaling factor for transition prior"
    regularization_emit_scale: "scaling factor for emission Dirichlet prior"
    min_inc: "minimum fractional increase in log-likelihood per round of EM (default is 0.1)"
    max_rounds: "maximum number of iterations of EM (default is 3)"
    min_gap_data: "minimum amount of sequence data (# of aligned pairs of characters) for training gap probs"
    mine_mit_data: "minimum amount of sequence data (# of aligned pairs of characters) for training emission probs"
    refinement: "number of iterative refinement steps (default is unlimited; 0 for none)"
    max_sn: "maximum sensitivity (instead of highest accuracy)"
    gap_factor: "gap factor; 0 for highest sensitivity (the internal effective minimum is 0.01); >1 for higher specificity (default is 1)"
    dynamic_weights: "(default) enable dynamic edge re-weighting (--nodynamicweights to disable)"
    tree_weights: "weights for sequence pairs based on a tree"
    require_homology: "require that there be some detectable homology between all input sequences"
    fast: "fast alignment: use 5 * Erdos-Renyi threshold percent of sequence pairs for alignment and 2 * for learning"
    re_falign: "alignment to a reference sequence only (reference must be first sequence in file)"
    mst_min: "build --mst-min minimum spanning trees on input sequences for pairwise comparisons (default is 3)"
    mst_max: "build --mst-max maximum spanning trees on input sequences for pairwise comparisons (default is 0)"
    mst_palm: "build --mst-palm minimum spanning palm trees on input sequences for pairwise comparisons (default is 0)"
    degree: "use --degree number of pairwise comparisons between closest sequences (default is 0)"
    km_er: "length of k-mers to use when determining sequence similarity"
    alignment_fraction: "randomized fraction of all (n choose 2) pairs of sequences to consider during alignment inference (default is 1)"
    alignment_number: "total number of (randomized) pairs of sequences to consider during alignment inference"
    mercator: "input Mercator constraints"
    max_ram: "maximum RAM to use (in megabytes) (default is 12809)"
    bandwidth: "banding (default is no banding)"
    min_prob: "minimum posterior probability to store (default is 0.01)"
  }
  output {
    File out_stdout = stdout()
  }
}