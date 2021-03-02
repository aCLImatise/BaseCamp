class: CommandLineTool
id: secapr_align_sequences.cwl
inputs:
- id: in_sequences
  doc: "The fasta file containing individual sequences for\nseveral samples and loci"
  type: File?
  inputBinding:
    prefix: --sequences
- id: in_outdir
  doc: The directory in which to store the resulting
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_exclude_ambiguous
  doc: Don't allow reads in alignments containing N-bases.
  type: boolean?
  inputBinding:
    prefix: --exclude_ambiguous
- id: in_gap_opening_penalty
  doc: Set gap opening penalty for aligner.
  type: string?
  inputBinding:
    prefix: --gap_opening_penalty
- id: in_gap_extension_penalty
  doc: Set gap extension penalty for aligner.
  type: string?
  inputBinding:
    prefix: --gap_extension_penalty
- id: in_min_seqs_per_locus
  doc: "Minimum number of sequences required for building\nalignment."
  type: long?
  inputBinding:
    prefix: --min_seqs_per_locus
- id: in_no_trim
  doc: "Suppress trimming of alignments. By default secapr\nuses trimal to trim gappy\
    \ positions from alignments."
  type: boolean?
  inputBinding:
    prefix: --no_trim
- id: in_trim_al_setting
  doc: "Use one of trimal automated scenarios. These will\noverwrite all other trimming\
    \ flags (see below). See\ntrimal tutorial for more info about settings."
  type: string?
  inputBinding:
    prefix: --trimal_setting
- id: in_window_size
  doc: Sliding window size for trimming.
  type: long?
  inputBinding:
    prefix: --window_size
- id: in_seq_proportion
  doc: "The proportion of sequences required. All alignment\ncolumns with fewer sequences\
    \ will be deleted (0-1)."
  type: long?
  inputBinding:
    prefix: --seq_proportion
- id: in_conserve_alignment_percentage
  doc: "This setting will ensure to conserve the specified\npercentage of the alignment\
    \ when trimming (0-100)."
  type: long?
  inputBinding:
    prefix: --conserve_alignment_percentage
- id: in_min_length
  doc: The minimum length of alignments to keep.
  type: long?
  inputBinding:
    prefix: --min_length
- id: in_cores
  doc: "Process alignments in parallel using --cores for\nalignment. This is the number\
    \ of PHYSICAL CPUs.\n"
  type: long?
  inputBinding:
    prefix: --cores
- id: in_alignments_dot
  doc: --aligner {muscle,mafft}
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/secapr:2.1.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- secapr
- align_sequences
