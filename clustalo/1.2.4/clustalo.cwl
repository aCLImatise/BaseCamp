class: CommandLineTool
id: clustalo.cwl
inputs:
- id: in_file
  doc: ={<file>,-} Multiple sequence input file (- for stdin)
  type: boolean
  inputBinding:
    prefix: --infile
- id: hmm_in
  doc: HMM input files
  type: File
  inputBinding:
    prefix: --hmm-in
- id: hmm_batch
  doc: specify HMMs for individual sequences
  type: File
  inputBinding:
    prefix: --hmm-batch
- id: de_align
  doc: Dealign input sequences
  type: boolean
  inputBinding:
    prefix: --dealign
- id: profile_1
  doc: Pre-aligned multiple sequence file (aligned columns will be kept fix)
  type: File
  inputBinding:
    prefix: --profile1
- id: profile_2
  doc: Pre-aligned multiple sequence file (aligned columns will be kept fix)
  type: File
  inputBinding:
    prefix: --profile2
- id: is_profile
  doc: disable check if profile, force profile (default no)
  type: boolean
  inputBinding:
    prefix: --is-profile
- id: seqtype
  doc: 'Force a sequence type (default: auto)'
  type: string
  inputBinding:
    prefix: --seqtype
- id: in_fmt
  doc: '={a2m=fa[sta],clu[stal],msf,phy[lip],selex,st[ockholm],vie[nna]} Forced sequence
    input file format (default: auto)'
  type: boolean
  inputBinding:
    prefix: --infmt
- id: dist_mat_in
  doc: Pairwise distance matrix input file (skips distance computation)
  type: File
  inputBinding:
    prefix: --distmat-in
- id: dist_mat_out
  doc: Pairwise distance matrix output file
  type: File
  inputBinding:
    prefix: --distmat-out
- id: guide_tree_in
  doc: Guide tree input file (skips distance computation and guide-tree clustering
    step)
  type: File
  inputBinding:
    prefix: --guidetree-in
- id: guide_tree_out
  doc: Guide tree output file
  type: File
  inputBinding:
    prefix: --guidetree-out
- id: pile_up
  doc: Sequentially align sequences
  type: boolean
  inputBinding:
    prefix: --pileup
- id: full
  doc: Use full distance matrix for guide-tree calculation (might be slow; mBed is
    default)
  type: boolean
  inputBinding:
    prefix: --full
- id: full_iter
  doc: Use full distance matrix for guide-tree calculation during iteration (might
    be slowish; mBed is default)
  type: boolean
  inputBinding:
    prefix: --full-iter
- id: cluster_size
  doc: soft maximum of sequences in sub-clusters
  type: string
  inputBinding:
    prefix: --cluster-size
- id: clustering_out
  doc: Clustering output file
  type: File
  inputBinding:
    prefix: --clustering-out
- id: trans
  doc: 'use transitivity (default: 0)'
  type: string
  inputBinding:
    prefix: --trans
- id: posterior_out
  doc: Posterior probability output file
  type: File
  inputBinding:
    prefix: --posterior-out
- id: use_kimura
  doc: use Kimura distance correction for aligned sequences (default no)
  type: boolean
  inputBinding:
    prefix: --use-kimura
- id: percent_id
  doc: convert distances into percent identities (default no)
  type: boolean
  inputBinding:
    prefix: --percent-id
- id: outfile
  doc: '={file,-} Multiple sequence alignment output file (default: stdout)'
  type: boolean
  inputBinding:
    prefix: --outfile
- id: out_fmt
  doc: '={a2m=fa[sta],clu[stal],msf,phy[lip],selex,st[ockholm],vie[nna]} MSA output
    file format (default: fasta)'
  type: boolean
  inputBinding:
    prefix: --outfmt
- id: residue_number
  doc: in Clustal format print residue numbers (default no)
  type: boolean
  inputBinding:
    prefix: --residuenumber
- id: wrap
  doc: number of residues before line-wrap in output
  type: string
  inputBinding:
    prefix: --wrap
- id: output_order
  doc: MSA output order like in input/guide-tree
  type: string
  inputBinding:
    prefix: --output-order
- id: iterations
  doc: Number of (combined guide-tree/HMM) iterations
  type: string
  inputBinding:
    prefix: --iterations
- id: max_guide_tree_iterations
  doc: Maximum number of guidetree iterations
  type: string
  inputBinding:
    prefix: --max-guidetree-iterations
- id: max_hmm_iterations
  doc: Maximum number of HMM iterations
  type: string
  inputBinding:
    prefix: --max-hmm-iterations
- id: max_num_seq
  doc: Maximum allowed number of sequences
  type: string
  inputBinding:
    prefix: --maxnumseq
- id: max_seq_len
  doc: Maximum allowed sequence length
  type: string
  inputBinding:
    prefix: --maxseqlen
- id: auto
  doc: Set options automatically (might overwrite some of your options)
  type: boolean
  inputBinding:
    prefix: --auto
- id: threads
  doc: Number of processors to use
  type: string
  inputBinding:
    prefix: --threads
- id: pseudo
  doc: Input file for pseudo-count parameters
  type: File
  inputBinding:
    prefix: --pseudo
- id: log
  doc: Log all non-essential output to this file
  type: File
  inputBinding:
    prefix: --log
- id: verbose
  doc: Verbose output (increases if given multiple times)
  type: boolean
  inputBinding:
    prefix: --verbose
- id: long_version
  doc: Print long version information and exit
  type: boolean
  inputBinding:
    prefix: --long-version
- id: force
  doc: Force file overwriting
  type: boolean
  inputBinding:
    prefix: --force
outputs: []
cwlVersion: v1.1
baseCommand:
- clustalo
