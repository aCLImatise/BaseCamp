class: CommandLineTool
id: fsa.cwl
inputs:
- id: in_log
  doc: turn on diagnostic logging (-loghelp shows syntax)
  type: string?
  inputBinding:
    prefix: --log
- id: in_log_file
  doc: log to file
  type: File?
  inputBinding:
    prefix: --logfile
- id: in_log_copy
  doc: log to file and standard error
  type: File?
  inputBinding:
    prefix: --logcopy
- id: in_log_time
  doc: timestamp standard error (logfile stamped automatically)
  type: boolean?
  inputBinding:
    prefix: --logtime
- id: in_log_xml
  doc: (default) add XML timestamps (--nologxml to disable)
  type: boolean?
  inputBinding:
    prefix: --logxml
- id: in_log_err
  doc: log on standard error (default)
  type: boolean?
  inputBinding:
    prefix: --logerr
- id: in_stockholm
  doc: output Stockholm alignments (default is multi-FASTA format)
  type: boolean?
  inputBinding:
    prefix: --stockholm
- id: in_gui
  doc: record alignment & statistical model for interactive Java GUI
  type: boolean?
  inputBinding:
    prefix: --gui
- id: in_write_params
  doc: write learned emission distributions (substitution matrices) to disk
  type: boolean?
  inputBinding:
    prefix: --write-params
- id: in_write_posteriors
  doc: write learned pairwise posterior alignment probability matrices to disk
  type: boolean?
  inputBinding:
    prefix: --write-posteriors
- id: in_nuc_prot
  doc: align input nucleotide sequences (must all be nucleotide) in protein space
  type: boolean?
  inputBinding:
    prefix: --nucprot
- id: in_in_del_two
  doc: (default) use two sets of indel states in Pair HMM (use --noindel2 to use 1
    set only)
  type: boolean?
  inputBinding:
    prefix: --indel2
- id: in_gap_open_one
  doc: initial gap-open probability (for set 1 of indel states)
  type: long?
  inputBinding:
    prefix: --gapopen1
- id: in_gap_extend_one
  doc: initial gap-extend probability (for set 1 of indel states)
  type: long?
  inputBinding:
    prefix: --gapextend1
- id: in_gap_open_two
  doc: initial gap-open probability (for set 2 of indel states)
  type: long?
  inputBinding:
    prefix: --gapopen2
- id: in_gap_extend_two
  doc: initial gap-extend probability (for set 2 of indel states)
  type: long?
  inputBinding:
    prefix: --gapextend2
- id: in_model
  doc: 'initial substitution model: 0 = Jukes-Cantor, 1 = Tamura-Nei / BLOSUM62-like
    (proteins) (default is 1)'
  type: long?
  inputBinding:
    prefix: --model
- id: in_time
  doc: Jukes-Cantor/Tamura-Nei evolutionary time parameter (default is 0.4)
  type: double?
  inputBinding:
    prefix: --time
- id: in_alpha_r
  doc: 'Tamura-Nei rate alpha_R (transition: purine) (default is 1.3)'
  type: double?
  inputBinding:
    prefix: --alphar
- id: in_alpha_y
  doc: 'Tamura-Nei rate alpha_Y (transition: pyrimidine) (default is 1.3)'
  type: double?
  inputBinding:
    prefix: --alphay
- id: in_beta
  doc: Tamura-Nei rate beta (transversion) (default is 1)
  type: long?
  inputBinding:
    prefix: --beta
- id: in_load_probs
  doc: load pairwise posterior probabilities from a file rather than performing inference
    with Pair HMM
  type: File?
  inputBinding:
    prefix: --load-probs
- id: in_learn_gap
  doc: estimate indel probabilities for each pair of sequences (--nolearngap to disable)
  type: boolean?
  inputBinding:
    prefix: --learngap
- id: in_learn_emit_by_pair
  doc: (default for DNA and RNA) estimate emission probabilities for each pair of
    sequences (--nolearnemit-bypair to disable)
  type: boolean?
  inputBinding:
    prefix: --learnemit-bypair
- id: in_learn_emit_all
  doc: (default for proteins) estimate emission probabilities averaged over all sequences
    (--nolearnemit-all to disable)
  type: boolean?
  inputBinding:
    prefix: --learnemit-all
- id: in_no_learn
  doc: disable ALL parameter learning (use ProbCons defaults)
  type: boolean?
  inputBinding:
    prefix: --nolearn
- id: in_regularize
  doc: (default) regularize learned emission and gap probabilities with Dirichlet
    prior (--noregularize to disable)
  type: boolean?
  inputBinding:
    prefix: --regularize
- id: in_regularization_gap_scale
  doc: scaling factor for transition prior
  type: string?
  inputBinding:
    prefix: --regularization-gapscale
- id: in_regularization_emit_scale
  doc: scaling factor for emission Dirichlet prior
  type: string?
  inputBinding:
    prefix: --regularization-emitscale
- id: in_min_inc
  doc: minimum fractional increase in log-likelihood per round of EM (default is 0.1)
  type: double?
  inputBinding:
    prefix: --mininc
- id: in_max_rounds
  doc: maximum number of iterations of EM (default is 3)
  type: long?
  inputBinding:
    prefix: --maxrounds
- id: in_min_gap_data
  doc: minimum amount of sequence data (# of aligned pairs of characters) for training
    gap probs
  type: long?
  inputBinding:
    prefix: --mingapdata
- id: in_mine_mit_data
  doc: minimum amount of sequence data (# of aligned pairs of characters) for training
    emission probs
  type: long?
  inputBinding:
    prefix: --minemitdata
- id: in_refinement
  doc: number of iterative refinement steps (default is unlimited; 0 for none)
  type: long?
  inputBinding:
    prefix: --refinement
- id: in_max_sn
  doc: maximum sensitivity (instead of highest accuracy)
  type: boolean?
  inputBinding:
    prefix: --maxsn
- id: in_gap_factor
  doc: gap factor; 0 for highest sensitivity (the internal effective minimum is 0.01);
    >1 for higher specificity (default is 1)
  type: double?
  inputBinding:
    prefix: --gapfactor
- id: in_dynamic_weights
  doc: (default) enable dynamic edge re-weighting (--nodynamicweights to disable)
  type: boolean?
  inputBinding:
    prefix: --dynamicweights
- id: in_tree_weights
  doc: weights for sequence pairs based on a tree
  type: string?
  inputBinding:
    prefix: --treeweights
- id: in_require_homology
  doc: require that there be some detectable homology between all input sequences
  type: boolean?
  inputBinding:
    prefix: --require-homology
- id: in_fast
  doc: 'fast alignment: use 5 * Erdos-Renyi threshold percent of sequence pairs for
    alignment and 2 * for learning'
  type: boolean?
  inputBinding:
    prefix: --fast
- id: in_re_falign
  doc: alignment to a reference sequence only (reference must be first sequence in
    file)
  type: boolean?
  inputBinding:
    prefix: --refalign
- id: in_mst_min
  doc: build --mst-min minimum spanning trees on input sequences for pairwise comparisons
    (default is 3)
  type: long?
  inputBinding:
    prefix: --mst-min
- id: in_mst_max
  doc: build --mst-max maximum spanning trees on input sequences for pairwise comparisons
    (default is 0)
  type: long?
  inputBinding:
    prefix: --mst-max
- id: in_mst_palm
  doc: build --mst-palm minimum spanning palm trees on input sequences for pairwise
    comparisons (default is 0)
  type: long?
  inputBinding:
    prefix: --mst-palm
- id: in_degree
  doc: use --degree number of pairwise comparisons between closest sequences (default
    is 0)
  type: long?
  inputBinding:
    prefix: --degree
- id: in_km_er
  doc: length of k-mers to use when determining sequence similarity
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_alignment_fraction
  doc: randomized fraction of all (n choose 2) pairs of sequences to consider during
    alignment inference (default is 1)
  type: long?
  inputBinding:
    prefix: --alignment-fraction
- id: in_alignment_number
  doc: total number of (randomized) pairs of sequences to consider during alignment
    inference
  type: long?
  inputBinding:
    prefix: --alignment-number
- id: in_mercator
  doc: input Mercator constraints
  type: string?
  inputBinding:
    prefix: --mercator
- id: in_max_ram
  doc: maximum RAM to use (in megabytes) (default is 12809)
  type: long?
  inputBinding:
    prefix: --maxram
- id: in_bandwidth
  doc: banding (default is no banding)
  type: long?
  inputBinding:
    prefix: --bandwidth
- id: in_min_prob
  doc: minimum posterior probability to store (default is 0.01)
  type: double?
  inputBinding:
    prefix: --minprob
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fsa:1.15.9--h8b12597_1
cwlVersion: v1.1
baseCommand:
- fsa
