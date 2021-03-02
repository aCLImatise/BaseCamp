version 1.0

task Rappas {
  input {
    Boolean? xms
    Boolean? x_mx
    Boolean? arbinary_binary_marginal
    Boolean? database_database_phase
    Boolean? _phase_one
    Boolean? _refalign_reference
    Boolean? _states_used
    Boolean? _reftree_tree
    Boolean? queries_fasta_queries
    Boolean? verbosity_verbosity_level
    Boolean? _workdir_directory
    Boolean? keep_at_most
    Boolean? keep_factor
    Boolean? write_reduction
    Boolean? guppy_compat
    Boolean? db_filename
    Boolean? _alpha_gammma
    Boolean? categories_categories_used
    Boolean? _ghosts_injected
    Boolean? _kmer_length
    Boolean? _model_used
    Boolean? ar_parameters
    Boolean? convert_uo
    Boolean? force_root
    Boolean? gap_jump_thresh
    Boolean? no_reduction
    Boolean? ratio_reduction
    Boolean? omega
    Boolean? use_unrooted
    Boolean? amb_with_max
    Boolean? ar_dir
    Boolean? ar_input_only
    Boolean? ar_only
    Boolean? db_in_ram
    Boolean? do_n_jumps
    Boolean? force_gap_jump
    Boolean? json_db
    Boolean? no_amb
    Boolean? threads
  }
  command <<<
    rappas \
      ~{if (xms) then "-Xms" else ""} \
      ~{if (x_mx) then "-Xmx" else ""} \
      ~{if (arbinary_binary_marginal) then "-b" else ""} \
      ~{if (database_database_phase) then "-d" else ""} \
      ~{if (_phase_one) then "-p" else ""} \
      ~{if (_refalign_reference) then "-r" else ""} \
      ~{if (_states_used) then "-s" else ""} \
      ~{if (_reftree_tree) then "-t" else ""} \
      ~{if (queries_fasta_queries) then "-q" else ""} \
      ~{if (verbosity_verbosity_level) then "-v" else ""} \
      ~{if (_workdir_directory) then "-w" else ""} \
      ~{if (keep_at_most) then "--keep-at-most" else ""} \
      ~{if (keep_factor) then "--keep-factor" else ""} \
      ~{if (write_reduction) then "--write-reduction" else ""} \
      ~{if (guppy_compat) then "--guppy-compat" else ""} \
      ~{if (db_filename) then "--dbfilename" else ""} \
      ~{if (_alpha_gammma) then "-a" else ""} \
      ~{if (categories_categories_used) then "-c" else ""} \
      ~{if (_ghosts_injected) then "-g" else ""} \
      ~{if (_kmer_length) then "-k" else ""} \
      ~{if (_model_used) then "-m" else ""} \
      ~{if (ar_parameters) then "--arparameters" else ""} \
      ~{if (convert_uo) then "--convertUO" else ""} \
      ~{if (force_root) then "--force-root" else ""} \
      ~{if (gap_jump_thresh) then "--gap-jump-thresh" else ""} \
      ~{if (no_reduction) then "--no-reduction" else ""} \
      ~{if (ratio_reduction) then "--ratio-reduction" else ""} \
      ~{if (omega) then "--omega" else ""} \
      ~{if (use_unrooted) then "--use_unrooted" else ""} \
      ~{if (amb_with_max) then "--ambwithmax" else ""} \
      ~{if (ar_dir) then "--ardir" else ""} \
      ~{if (ar_input_only) then "--arinputonly" else ""} \
      ~{if (ar_only) then "--aronly" else ""} \
      ~{if (db_in_ram) then "--dbinram" else ""} \
      ~{if (do_n_jumps) then "--do-n-jumps" else ""} \
      ~{if (force_gap_jump) then "--force-gap-jump" else ""} \
      ~{if (json_db) then "--jsondb" else ""} \
      ~{if (no_amb) then "--noamb" else ""} \
      ~{if (threads) then "--threads" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    xms: "-> memory allocated at startup. (m=MegaByte, g=GigaByte)"
    x_mx: "-> maximum memory allocated to the process."
    arbinary_binary_marginal: "(--arbinary)   [file] Binary for marginal AR, currently 'phyml' and\\n'baseml' (from PAML) are supported. (b phase)"
    database_database_phase: "(--database)   [file] The database of ancestral kmers. (b|p phase)"
    _phase_one: "(--phase)      [b|p] One of 'b' for \\\"Build\\\" or 'p' for \\\"Place\\\"\\nb: Build DB of phylo-kmers (done 1 time).\\np: Phylogenetic placement itself (done n times)\\nrequires the DB generated during 'build' phase."
    _refalign_reference: "(--refalign)   [file] Reference alignment in fasta format.\\nIt must be the multiple alignment from which was\\nbuilt the reference tree loaded with -t. (b phase)"
    _states_used: "(--states)     ['nucl'|'amino'] States used in analysis. (b|p phase)"
    _reftree_tree: "(--reftree)    [file] Reference tree, in newick format."
    queries_fasta_queries: "(--queries)    [file[,file,...]] Fasta queries to place on the tree.\\nCan be a list of files separated by ','. (b|p phase)"
    verbosity_verbosity_level: "(--verbosity)  [0] Verbosity level: -1=none ; 0=default ; 1=high"
    _workdir_directory: "(--workdir)    [path] Working directory for temp files. (b|p phase)"
    keep_at_most: "[7] Max number of placement per query kept in\\nthe jplace output. (p phase)"
    keep_factor: "[0.01] Report placement with likelihood_ratio higher\\nthan (factor x best_likelihood_ratio). (p phase)"
    write_reduction: "[file] Write reduced alignment to file. (b phase)"
    guppy_compat: "[] Ensures output is Guppy compatible. (p phase)"
    db_filename: "[string] Set DB filename. (b phase)"
    _alpha_gammma: "(--alpha)      [1.0] Gammma shape parameter used in AR . (b phase)"
    categories_categories_used: "(--categories) [4] # categories used in AR . (b phase)"
    _ghosts_injected: "(--ghosts)     [1] # ghost nodes injected per branches. (b phase)"
    _kmer_length: "(--k)          [8] k-mer length used at DB build. (b mode)"
    _model_used: "(--model)      [GTR|LG] Model used in AR, one of the following:\\nnucl  : JC69, HKY85, K80, F81, TN93, GTR\\namino : LG, WAG, JTT, Dayhoff, DCMut, CpREV,\\nmMtREV, MtMam, MtArt"
    ar_parameters: "[string] Parameters passed to the software used for\\nanc. seq. reconstuct. Overrides -a,-c,-m options.\\nValue must be quoted by ' or \\\". Do not set options\\n-i,-u,--ancestral (managed by RAPPAS). (b phase)\\nPhyML example: \\\"-m HIVw -c 10 -f m -v 0.0 --r_seed 1\\\""
    convert_uo: "[] U,O amino acids are converted to C,L. (b|p phase)"
    force_root: "[] Root input tree (if unrooted) by adding a root\\nnode on righmost branch of the trifurcation.(b phase)"
    gap_jump_thresh: "[0.3] Gap ratio above which gap jumps are activated."
    no_reduction: "[] Do not operate alignment reduction. This will\\nkeep all sites of input reference alignment and\\nmay produce erroneous ancestral k-mers. (b phase)"
    ratio_reduction: "[0.99] Ratio for alignment reduction, e.g. sites\\nholding >99% gaps are ignored. (b phase)"
    omega: "[1.0] Modifier levelling the threshold used during\\nphylo-kmer filtering, T=(omega/#states)^k .(b phase)"
    use_unrooted: "[] Confirms you accept to use an unrooted reference\\ntree (option -t). The trifurcation described by the\\nnewick file will be considered as root. Be aware that\\nmeaningless roots may impact accuracy. (b phase)"
    amb_with_max: "[] Treat ambiguities with max, not mean. (p phase)"
    ar_dir: "[dir] Skip ancestral sequence reconstruction, and\\nuses outputs from the specified directory. (b phase)"
    ar_input_only: "[] Generate only AR inputs. (b phase)"
    ar_only: "[] Launch AR, but not DB build. (b phase)"
    db_in_ram: "[] Build DB, do not save it to a file, but directly\\nplace queries given via -q instead."
    do_n_jumps: "[] Shifts from 1 to n jumps. (b phase)"
    force_gap_jump: "[] Forces gap jump even if %gap<thresh. (b phase)"
    json_db: "[] DB written as json. (careful, huge file outputs!)"
    no_amb: "[] Do not treat ambiguous states. (p phase)"
    threads: "[4] #threads used in AR (if raxml-ng). (b phase)"
  }
  output {
    File out_stdout = stdout()
  }
}