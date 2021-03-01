class: CommandLineTool
id: set_finder.cwl
inputs:
- id: in_all
  doc: Find all cliques.
  type: boolean?
  inputBinding:
    prefix: --all
- id: in_single
  doc: Find only one clique (default).
  type: boolean?
  inputBinding:
    prefix: --single
- id: in_weight
  doc: Tell only maximum weight (no faster than -s).
  type: boolean?
  inputBinding:
    prefix: --weight
- id: in_min
  doc: "Search for cliques with weight at least N.  If N=0,\nsearches for maximum\
    \ weight clique (default)."
  type: long?
  inputBinding:
    prefix: --min
- id: in_max
  doc: "Search for cliques with weight at most N.  If N=0,\nno limit is imposed (default).\
    \  N being positive is\nincompatible with \"--min 0\" (\"--min 1\" is assumed)."
  type: long?
  inputBinding:
    prefix: --max
- id: in_bg_freq
  doc: Minimum value for genome_length/primer_counts in a set.
  type: string?
  inputBinding:
    prefix: --bg_freq
- id: in_bg_len
  doc: Length of the background genome (in bases).
  type: long?
  inputBinding:
    prefix: --bg_len
- id: in_maximal
  doc: Require cliques to be maximal.
  type: boolean?
  inputBinding:
    prefix: --maximal
- id: in_unweighted
  doc: Assume weight 1 for all vertices.
  type: boolean?
  inputBinding:
    prefix: --unweighted
- id: in_from_zero
  doc: Number vertices 0 to n-1 instead of 1 to n when writing.
  type: boolean?
  inputBinding:
    prefix: --from-0
- id: in_reorder
  doc: Reorder with function F.  See below for details.
  type: string?
  inputBinding:
    prefix: --reorder
- id: in_quiet
  doc: "Suppresses progress output.  Specifying -q twice\nsuppresses all output except\
    \ the actual result."
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_output
  doc: Output results to file F.
  type: File?
  inputBinding:
    prefix: --output
- id: in_none
  doc: No ordering (same order as in the file).
  type: string
  inputBinding:
    position: 0
- id: in_reverse
  doc: Reverse order as in the file.
  type: string
  inputBinding:
    position: 1
- id: in_default
  doc: One of the two below, depending on weightedness.
  type: string
  inputBinding:
    position: 2
- id: in_unweighted_coloring
  doc: Coloring method efficient for unweighted graphs.
  type: string
  inputBinding:
    position: 3
- id: in_weighted_coloring
  doc: Coloring method efficient for weighted graphs.
  type: string
  inputBinding:
    position: 4
- id: in_degree
  doc: Order by ascending degree.
  type: string
  inputBinding:
    position: 5
- id: in_random
  doc: Random order.
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output results to file F.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- set_finder
