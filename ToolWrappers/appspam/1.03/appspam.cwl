class: CommandLineTool
id: appspam.cwl
inputs:
- id: in_reference_sequencesfull_path
  doc: "Reference sequences.\nFull path to fasta file with references."
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_query_sequencesfull_path
  doc: "Query sequences.\nFull path to fasta file with query sequences."
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_reference_treefile_bifurcating
  doc: "Reference tree.\nFile of reference tree in newick format.\n(Rooted, bifurcating\
    \ tree in newick format.\nAll leaves must have identical names to reference sequences.)"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_out_j_place
  doc: Path and name to JPlace output file.
  type: File?
  inputBinding:
    prefix: --out_jplace
- id: in_weight
  doc: Weight of pattern.
  type: boolean?
  inputBinding:
    prefix: --weight
- id: in_dont_care
  doc: Number of don't care positions.
  type: boolean?
  inputBinding:
    prefix: --dontCare
- id: in_mode
  doc: "Placement-mode.\nOne of [MINDIST, SPAMCOUNT, LCADIST, LCACOUNT, SPAMX]"
  type: boolean?
  inputBinding:
    prefix: --mode
- id: in_spam_x
  doc: Threshold when to place at leaves for SPAMX.
  type: boolean?
  inputBinding:
    prefix: --spamx
- id: in_unassembled
  doc: "Use unassembled references,\nsee github repository for more information."
  type: boolean?
  inputBinding:
    prefix: --unassembled
- id: in_delimiter
  doc: Delimiter used for unassembled references.
  type: boolean?
  inputBinding:
    prefix: --delimiter
- id: in_pattern
  doc: Number of patterns.
  type: boolean?
  inputBinding:
    prefix: --pattern
- id: in_threads
  doc: Number of threads.
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_sampling
  doc: 'Experimental: Samples the spaced word matches.'
  type: boolean?
  inputBinding:
    prefix: --sampling
- id: in_read_block_size
  doc: Read block size.
  type: boolean?
  inputBinding:
    prefix: --readBlockSize
- id: in_threshold
  doc: Threshold used for filtering spaced word matches.
  type: boolean?
  inputBinding:
    prefix: --threshold
- id: in_turn_verbose_mode
  doc: "Turn on verbose mode with additional\ninformation printed to std_out."
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_write_scores
  doc: Write all query-reference distances to files.
  type: boolean?
  inputBinding:
    prefix: --write-scores
- id: in_write_histogram
  doc: Write scores for all spaced word matches to file.
  type: boolean?
  inputBinding:
    prefix: --write-histogram
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_j_place
  doc: Path and name to JPlace output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_out_j_place)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/appspam:1.03--hc9558a2_0
cwlVersion: v1.1
baseCommand:
- appspam
