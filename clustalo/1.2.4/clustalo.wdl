version 1.0

task Clustalo {
  input {
    Boolean? in_file
    File? hmm_in
    File? hmm_batch
    Boolean? de_align
    File? profile_one
    File? profile_two
    Boolean? is_profile
    String? seqtype
    Boolean? in_fmt
    File? dist_mat_in
    File? dist_mat_out
    File? guide_tree_in
    File? guide_tree_out
    Boolean? pile_up
    Boolean? full
    Boolean? full_iter
    String? cluster_size
    File? clustering_out
    String? trans
    File? posterior_out
    Boolean? use_kimura
    Boolean? percent_id
    Boolean? outfile
    Boolean? out_fmt
    Boolean? residue_number
    String? wrap
    String? output_order
    String? iterations
    String? max_guide_tree_iterations
    String? max_hmm_iterations
    String? max_num_seq
    String? max_seq_len
    Boolean? auto
    String? threads
    File? pseudo
    File? log
    Boolean? verbose
    Boolean? long_version
    Boolean? force
    Boolean? hv
  }
  command <<<
    clustalo \
      ~{true="--infile" false="" in_file} \
      ~{if defined(hmm_in) then ("--hmm-in " +  '"' + hmm_in + '"') else ""} \
      ~{if defined(hmm_batch) then ("--hmm-batch " +  '"' + hmm_batch + '"') else ""} \
      ~{true="--dealign" false="" de_align} \
      ~{if defined(profile_one) then ("--profile1 " +  '"' + profile_one + '"') else ""} \
      ~{if defined(profile_two) then ("--profile2 " +  '"' + profile_two + '"') else ""} \
      ~{true="--is-profile" false="" is_profile} \
      ~{if defined(seqtype) then ("--seqtype " +  '"' + seqtype + '"') else ""} \
      ~{true="--infmt" false="" in_fmt} \
      ~{if defined(dist_mat_in) then ("--distmat-in " +  '"' + dist_mat_in + '"') else ""} \
      ~{if defined(dist_mat_out) then ("--distmat-out " +  '"' + dist_mat_out + '"') else ""} \
      ~{if defined(guide_tree_in) then ("--guidetree-in " +  '"' + guide_tree_in + '"') else ""} \
      ~{if defined(guide_tree_out) then ("--guidetree-out " +  '"' + guide_tree_out + '"') else ""} \
      ~{true="--pileup" false="" pile_up} \
      ~{true="--full" false="" full} \
      ~{true="--full-iter" false="" full_iter} \
      ~{if defined(cluster_size) then ("--cluster-size " +  '"' + cluster_size + '"') else ""} \
      ~{if defined(clustering_out) then ("--clustering-out " +  '"' + clustering_out + '"') else ""} \
      ~{if defined(trans) then ("--trans " +  '"' + trans + '"') else ""} \
      ~{if defined(posterior_out) then ("--posterior-out " +  '"' + posterior_out + '"') else ""} \
      ~{true="--use-kimura" false="" use_kimura} \
      ~{true="--percent-id" false="" percent_id} \
      ~{true="--outfile" false="" outfile} \
      ~{true="--outfmt" false="" out_fmt} \
      ~{true="--residuenumber" false="" residue_number} \
      ~{if defined(wrap) then ("--wrap " +  '"' + wrap + '"') else ""} \
      ~{if defined(output_order) then ("--output-order " +  '"' + output_order + '"') else ""} \
      ~{if defined(iterations) then ("--iterations " +  '"' + iterations + '"') else ""} \
      ~{if defined(max_guide_tree_iterations) then ("--max-guidetree-iterations " +  '"' + max_guide_tree_iterations + '"') else ""} \
      ~{if defined(max_hmm_iterations) then ("--max-hmm-iterations " +  '"' + max_hmm_iterations + '"') else ""} \
      ~{if defined(max_num_seq) then ("--maxnumseq " +  '"' + max_num_seq + '"') else ""} \
      ~{if defined(max_seq_len) then ("--maxseqlen " +  '"' + max_seq_len + '"') else ""} \
      ~{true="--auto" false="" auto} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(pseudo) then ("--pseudo " +  '"' + pseudo + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--long-version" false="" long_version} \
      ~{true="--force" false="" force} \
      ~{true="-hv" false="" hv}
  >>>
  parameter_meta {
    in_file: "={<file>,-} Multiple sequence input file (- for stdin)"
    hmm_in: "HMM input files"
    hmm_batch: "specify HMMs for individual sequences"
    de_align: "Dealign input sequences"
    profile_one: "Pre-aligned multiple sequence file (aligned columns will be kept fix)"
    profile_two: "Pre-aligned multiple sequence file (aligned columns will be kept fix)"
    is_profile: "disable check if profile, force profile (default no)"
    seqtype: "Force a sequence type (default: auto)"
    in_fmt: "={a2m=fa[sta],clu[stal],msf,phy[lip],selex,st[ockholm],vie[nna]} Forced sequence input file format (default: auto)"
    dist_mat_in: "Pairwise distance matrix input file (skips distance computation)"
    dist_mat_out: "Pairwise distance matrix output file"
    guide_tree_in: "Guide tree input file (skips distance computation and guide-tree clustering step)"
    guide_tree_out: "Guide tree output file"
    pile_up: "Sequentially align sequences"
    full: "Use full distance matrix for guide-tree calculation (might be slow; mBed is default)"
    full_iter: "Use full distance matrix for guide-tree calculation during iteration (might be slowish; mBed is default)"
    cluster_size: "soft maximum of sequences in sub-clusters"
    clustering_out: "Clustering output file"
    trans: "use transitivity (default: 0)"
    posterior_out: "Posterior probability output file"
    use_kimura: "use Kimura distance correction for aligned sequences (default no)"
    percent_id: "convert distances into percent identities (default no)"
    outfile: "={file,-} Multiple sequence alignment output file (default: stdout)"
    out_fmt: "={a2m=fa[sta],clu[stal],msf,phy[lip],selex,st[ockholm],vie[nna]} MSA output file format (default: fasta)"
    residue_number: "in Clustal format print residue numbers (default no)"
    wrap: "number of residues before line-wrap in output"
    output_order: "MSA output order like in input/guide-tree"
    iterations: "Number of (combined guide-tree/HMM) iterations"
    max_guide_tree_iterations: "Maximum number of guidetree iterations"
    max_hmm_iterations: "Maximum number of HMM iterations"
    max_num_seq: "Maximum allowed number of sequences"
    max_seq_len: "Maximum allowed sequence length"
    auto: "Set options automatically (might overwrite some of your options)"
    threads: "Number of processors to use"
    pseudo: "Input file for pseudo-count parameters"
    log: "Log all non-essential output to this file"
    verbose: "Verbose output (increases if given multiple times)"
    long_version: "Print long version information and exit"
    force: "Force file overwriting"
    hv: ""
  }
}