class: CommandLineTool
id: lamassemble.cwl
inputs:
- id: in_alignment
  doc: print an alignment, not a consensus
  type: boolean?
  inputBinding:
    prefix: --alignment
- id: in_consensus
  doc: just make a consensus, of already-aligned sequences
  type: boolean?
  inputBinding:
    prefix: --consensus
- id: in_gap_max
  doc: use alignment columns with <= G% gaps (default=50)
  type: long?
  inputBinding:
    prefix: --gap-max
- id: in_name
  doc: name of the consensus sequence (default=lamassembled)
  type: string?
  inputBinding:
    prefix: --name
- id: in_out
  doc: just write MAFFT input files, named BASE.xxx
  type: string?
  inputBinding:
    prefix: --out
- id: in_prob
  doc: "use pairwise restrictions with error probability <= P\n(default=0.002)"
  type: double?
  inputBinding:
    prefix: --prob
- id: in_diagonal_max
  doc: "max change in alignment diagonal between pairwise\nalignments (default=1000)"
  type: long?
  inputBinding:
    prefix: --diagonal-max
- id: in_verbose
  doc: show progress messages
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_all
  doc: use all of each sequence, not just aligning part
  type: boolean?
  inputBinding:
    prefix: --all
- id: in_maff_t
  doc: additional arguments for MAFFT
  type: string?
  inputBinding:
    prefix: --mafft
- id: in_number_parallel_threads
  doc: number of parallel threads (default=1)
  type: long?
  inputBinding:
    prefix: -P
- id: in_use_minimum_positions
  doc: use minimum positions in length-W windows (default=19)
  type: long?
  inputBinding:
    prefix: -W
- id: in_max_initial_matches
  doc: max initial matches per query position (default=5)
  type: long?
  inputBinding:
    prefix: -m
- id: in_max_gap_length
  doc: max gap length (default=30)
  type: long?
  inputBinding:
    prefix: -z
- id: in_last_train_dot_out
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sequences_dot_fx
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- lamassemble
