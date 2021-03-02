class: CommandLineTool
id: clustalo.cwl
inputs:
- id: in_in_file
  doc: ={<file>,-} Multiple sequence input file (- for stdin)
  type: boolean?
  inputBinding:
    prefix: --infile
- id: in_hmm_in
  doc: HMM input files
  type: File?
  inputBinding:
    prefix: --hmm-in
- id: in_hmm_batch
  doc: specify HMMs for individual sequences
  type: File?
  inputBinding:
    prefix: --hmm-batch
- id: in_de_align
  doc: Dealign input sequences
  type: boolean?
  inputBinding:
    prefix: --dealign
- id: in_profile_one
  doc: Pre-aligned multiple sequence file (aligned columns will be kept fix)
  type: File?
  inputBinding:
    prefix: --profile1
- id: in_profile_two
  doc: Pre-aligned multiple sequence file (aligned columns will be kept fix)
  type: File?
  inputBinding:
    prefix: --profile2
- id: in_is_profile
  doc: disable check if profile, force profile (default no)
  type: boolean?
  inputBinding:
    prefix: --is-profile
- id: in_seqtype
  doc: 'Force a sequence type (default: auto)'
  type: string?
  inputBinding:
    prefix: --seqtype
- id: in_in_fmt
  doc: '={a2m=fa[sta],clu[stal],msf,phy[lip],selex,st[ockholm],vie[nna]} Forced sequence
    input file format (default: auto)'
  type: boolean?
  inputBinding:
    prefix: --infmt
- id: in_dist_mat_in
  doc: Pairwise distance matrix input file (skips distance computation)
  type: File?
  inputBinding:
    prefix: --distmat-in
- id: in_dist_mat_out
  doc: Pairwise distance matrix output file
  type: File?
  inputBinding:
    prefix: --distmat-out
- id: in_guide_tree_in
  doc: Guide tree input file (skips distance computation and guide-tree clustering
    step)
  type: File?
  inputBinding:
    prefix: --guidetree-in
- id: in_guide_tree_out
  doc: Guide tree output file
  type: File?
  inputBinding:
    prefix: --guidetree-out
- id: in_pile_up
  doc: Sequentially align sequences
  type: boolean?
  inputBinding:
    prefix: --pileup
- id: in_full
  doc: Use full distance matrix for guide-tree calculation (might be slow; mBed is
    default)
  type: boolean?
  inputBinding:
    prefix: --full
- id: in_full_iter
  doc: Use full distance matrix for guide-tree calculation during iteration (might
    be slowish; mBed is default)
  type: boolean?
  inputBinding:
    prefix: --full-iter
- id: in_cluster_size
  doc: soft maximum of sequences in sub-clusters
  type: long?
  inputBinding:
    prefix: --cluster-size
- id: in_clustering_out
  doc: Clustering output file
  type: File?
  inputBinding:
    prefix: --clustering-out
- id: in_trans
  doc: 'use transitivity (default: 0)'
  type: long?
  inputBinding:
    prefix: --trans
- id: in_posterior_out
  doc: Posterior probability output file
  type: File?
  inputBinding:
    prefix: --posterior-out
- id: in_use_kimura
  doc: use Kimura distance correction for aligned sequences (default no)
  type: boolean?
  inputBinding:
    prefix: --use-kimura
- id: in_percent_id
  doc: convert distances into percent identities (default no)
  type: boolean?
  inputBinding:
    prefix: --percent-id
- id: in_outfile
  doc: '={file,-} Multiple sequence alignment output file (default: stdout)'
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_out_fmt
  doc: '={a2m=fa[sta],clu[stal],msf,phy[lip],selex,st[ockholm],vie[nna]} MSA output
    file format (default: fasta)'
  type: File?
  inputBinding:
    prefix: --outfmt
- id: in_residue_number
  doc: in Clustal format print residue numbers (default no)
  type: boolean?
  inputBinding:
    prefix: --residuenumber
- id: in_wrap
  doc: number of residues before line-wrap in output
  type: long?
  inputBinding:
    prefix: --wrap
- id: in_output_order
  doc: MSA output order like in input/guide-tree
  type: string?
  inputBinding:
    prefix: --output-order
- id: in_iterations
  doc: Number of (combined guide-tree/HMM) iterations
  type: long?
  inputBinding:
    prefix: --iterations
- id: in_max_guide_tree_iterations
  doc: Maximum number of guidetree iterations
  type: long?
  inputBinding:
    prefix: --max-guidetree-iterations
- id: in_max_hmm_iterations
  doc: Maximum number of HMM iterations
  type: long?
  inputBinding:
    prefix: --max-hmm-iterations
- id: in_max_num_seq
  doc: Maximum allowed number of sequences
  type: long?
  inputBinding:
    prefix: --maxnumseq
- id: in_max_seq_len
  doc: Maximum allowed sequence length
  type: long?
  inputBinding:
    prefix: --maxseqlen
- id: in_auto
  doc: Set options automatically (might overwrite some of your options)
  type: boolean?
  inputBinding:
    prefix: --auto
- id: in_threads
  doc: Number of processors to use
  type: long?
  inputBinding:
    prefix: --threads
- id: in_pseudo
  doc: Input file for pseudo-count parameters
  type: File?
  inputBinding:
    prefix: --pseudo
- id: in_log
  doc: Log all non-essential output to this file
  type: File?
  inputBinding:
    prefix: --log
- id: in_verbose
  doc: Verbose output (increases if given multiple times)
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_long_version
  doc: Print long version information and exit
  type: boolean?
  inputBinding:
    prefix: --long-version
- id: in_force
  doc: Force file overwriting
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_hv
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -hv
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_dist_mat_out
  doc: Pairwise distance matrix output file
  type: File?
  outputBinding:
    glob: $(inputs.in_dist_mat_out)
- id: out_guide_tree_out
  doc: Guide tree output file
  type: File?
  outputBinding:
    glob: $(inputs.in_guide_tree_out)
- id: out_clustering_out
  doc: Clustering output file
  type: File?
  outputBinding:
    glob: $(inputs.in_clustering_out)
- id: out_posterior_out
  doc: Posterior probability output file
  type: File?
  outputBinding:
    glob: $(inputs.in_posterior_out)
- id: out_outfile
  doc: '={file,-} Multiple sequence alignment output file (default: stdout)'
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
- id: out_out_fmt
  doc: '={a2m=fa[sta],clu[stal],msf,phy[lip],selex,st[ockholm],vie[nna]} MSA output
    file format (default: fasta)'
  type: File?
  outputBinding:
    glob: $(inputs.in_out_fmt)
- id: out_log
  doc: Log all non-essential output to this file
  type: File?
  outputBinding:
    glob: $(inputs.in_log)
hints: []
cwlVersion: v1.1
baseCommand:
- clustalo
