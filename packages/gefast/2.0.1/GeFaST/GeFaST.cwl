class: CommandLineTool
id: GeFaST.cwl
inputs:
- id: in_alphabet
  doc: 'discard sequences with other characters (default: ACGT)'
  type: string?
  inputBinding:
    prefix: --alphabet
- id: in_output_internal
  doc: 'output links underlying the cluster to file (default: not created)'
  type: File?
  inputBinding:
    prefix: --output_internal
- id: in_output_otus
  doc: 'output clusters to file (default: not created)'
  type: File?
  inputBinding:
    prefix: --output_otus
- id: in_output_statistics
  doc: 'output statistics to file (defaut: not created)'
  type: File?
  inputBinding:
    prefix: --output_statistics
- id: in_output_seeds
  doc: 'output seeds to file (default: not created)'
  type: File?
  inputBinding:
    prefix: --output_seeds
- id: in_output_uc_lust
  doc: 'create UCLUST-like output file (default: not created)'
  type: File?
  inputBinding:
    prefix: --output_uclust
- id: in_sep_abundance
  doc: 'change separator symbol between identifier and abundance (default: _)'
  type: string?
  inputBinding:
    prefix: --sep_abundance
- id: in_min_length
  doc: 'discard shorter sequences (default: deactivated)'
  type: long?
  inputBinding:
    prefix: --min_length
- id: in_max_length
  doc: 'discard longer sequences (default: deactivated)'
  type: long?
  inputBinding:
    prefix: --max_length
- id: in_min_abundance
  doc: 'discard less abundant sequences (default: deactivated)'
  type: long?
  inputBinding:
    prefix: --min_abundance
- id: in_max_abundance
  doc: 'discard more abundant sequences (default: deactivated)'
  type: long?
  inputBinding:
    prefix: --max_abundance
- id: in_mo_thur
  doc: output clusters in mothur list file format
  type: File?
  inputBinding:
    prefix: --mothur
- id: in_quality_encoding
  doc: 'change expected quality encoding (FASTQ inputs, default: sanger)'
  type: string?
  inputBinding:
    prefix: --quality_encoding
- id: in_list_file
  doc: consider <input> option as path to file containing list of actual input files
    (one path per line)
  type: File?
  inputBinding:
    prefix: --list_file
- id: in_threshold
  doc: 'distance threshold in clustering phase (default: mode-dependent)'
  type: string?
  inputBinding:
    prefix: --threshold
- id: in_refinement_threshold
  doc: 'distance threshold in refinement phase (default: 0, i.e. no refinement)'
  type: long?
  inputBinding:
    prefix: --refinement_threshold
- id: in_boundary
  doc: 'mass boundary distinguishing between light and heavy clusters during refinement
    (default: 3)'
  type: long?
  inputBinding:
    prefix: --boundary
- id: in_break_swarms
  doc: 'do not extend cluster when the new amplicon has a larger abundance than the
    current subseed (default: 1)'
  type: long?
  inputBinding:
    prefix: --break_swarms
- id: in_match_reward
  doc: 'reward for nucleotide match during pairwise global alignment computation (default:
    5)'
  type: long?
  inputBinding:
    prefix: --match_reward
- id: in_mismatch_penalty
  doc: 'penalty for nucleotide mismatch during pairwise global alignment computation
    (default: -4)'
  type: long?
  inputBinding:
    prefix: --mismatch_penalty
- id: in_gap_opening_penalty
  doc: 'penalty for opening a gap during pairwise global alignment computation (default:
    -12)'
  type: long?
  inputBinding:
    prefix: --gap_opening_penalty
- id: in_gap_extension_penalty
  doc: 'penalty for extending a gap during pairwise global alignment computation (default:
    -4)'
  type: long?
  inputBinding:
    prefix: --gap_extension_penalty
- id: in_preprocessor
  doc: 'use the specified component to perform the preprocessing (default: mode-dependent)'
  type: string?
  inputBinding:
    prefix: --preprocessor
- id: in_cluster_er
  doc: 'use the specified component to cluster the amplicons (default: mode-dependent)'
  type: string?
  inputBinding:
    prefix: --clusterer
- id: in_refiner
  doc: 'use the specified component to refine the clusters (default: mode-dependent)'
  type: string?
  inputBinding:
    prefix: --refiner
- id: in_output_generator
  doc: 'use the specified component to generate the requested outputs (default: mode-dependent)'
  type: string?
  inputBinding:
    prefix: --output_generator
- id: in_lev
  doc: Cluster amplicons based on the number of edit operations in optimal pairwise
    alignments.
  type: string
  inputBinding:
    position: 0
- id: in_as
  doc: Cluster amplicons based on the score of optimal pairwise alignments.
  type: string
  inputBinding:
    position: 1
- id: in_q_lev
  doc: Cluster amplicons based on the number of edit operations in optimal pairwise
    alignments considering the quality scores associated with the sequences.
  type: string
  inputBinding:
    position: 2
- id: in_q_as
  doc: Cluster amplicons based on the score of optimal pairwise alignments considering
    the quality scores associated with the sequences
  type: string
  inputBinding:
    position: 3
- id: in_cons
  doc: Cluster amplicons using a notion of consistency considering the quality and
    abundance of amplicons.
  type: string
  inputBinding:
    position: 4
- id: in_de_rep
  doc: Group amplicons based on exact sequence equality
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_internal
  doc: 'output links underlying the cluster to file (default: not created)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_internal)
- id: out_output_otus
  doc: 'output clusters to file (default: not created)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_otus)
- id: out_output_statistics
  doc: 'output statistics to file (defaut: not created)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_statistics)
- id: out_output_seeds
  doc: 'output seeds to file (default: not created)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_seeds)
- id: out_output_uc_lust
  doc: 'create UCLUST-like output file (default: not created)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_uc_lust)
- id: out_mo_thur
  doc: output clusters in mothur list file format
  type: File?
  outputBinding:
    glob: $(inputs.in_mo_thur)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gefast:2.0.1--h7d875b9_0
cwlVersion: v1.1
baseCommand:
- GeFaST
