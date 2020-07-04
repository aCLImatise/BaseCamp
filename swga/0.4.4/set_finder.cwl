class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/set_finder.cwl
inputs:
- id: _find_cliques
  doc: --all          Find all cliques.
  type: boolean
  inputBinding:
    prefix: -a
- id: _single_find
  doc: --single       Find only one clique (default).
  type: boolean
  inputBinding:
    prefix: -s
- id: _weight_tell
  doc: --weight       Tell only maximum weight (no faster than -s).
  type: boolean
  inputBinding:
    prefix: -w
- id: min
  doc: Search for cliques with weight at least N.  If N=0, searches for maximum weight
    clique (default).
  type: string
  inputBinding:
    prefix: --min
- id: max
  doc: Search for cliques with weight at most N.  If N=0, no limit is imposed (default).  N
    being positive is incompatible with "--min 0" ("--min 1" is assumed).
  type: string
  inputBinding:
    prefix: --max
- id: bg_freq
  doc: Minimum value for genome_length/primer_counts in a set.
  type: string
  inputBinding:
    prefix: --bg_freq
- id: bg_len
  doc: Length of the background genome (in bases).
  type: string
  inputBinding:
    prefix: --bg_len
- id: _maximal_cliques
  doc: --maximal      Require cliques to be maximal.
  type: boolean
  inputBinding:
    prefix: -x
- id: _unweighted_assume
  doc: --unweighted   Assume weight 1 for all vertices.
  type: boolean
  inputBinding:
    prefix: -u
- id: _when_writing
  doc: --from-0       Number vertices 0 to n-1 instead of 1 to n when writing.
  type: boolean
  inputBinding:
    prefix: '-0'
- id: reorder
  doc: Reorder with function F.  See below for details.
  type: string
  inputBinding:
    prefix: --reorder
- id: _quiet_suppresses
  doc: --quiet        Suppresses progress output.  Specifying -q twice suppresses
    all output except the actual result.
  type: boolean
  inputBinding:
    prefix: -q
- id: output
  doc: Output results to file F.
  type: string
  inputBinding:
    prefix: --output
- id: none
  doc: No ordering (same order as in the file).
  type: string
  inputBinding:
    position: 0
- id: reverse
  doc: Reverse order as in the file.
  type: string
  inputBinding:
    position: 1
- id: default
  doc: One of the two below, depending on weightedness.
  type: string
  inputBinding:
    position: 2
- id: unweighted_coloring
  doc: Coloring method efficient for unweighted graphs.
  type: string
  inputBinding:
    position: 3
- id: weighted_coloring
  doc: Coloring method efficient for weighted graphs.
  type: string
  inputBinding:
    position: 4
- id: degree
  doc: Order by ascending degree.
  type: string
  inputBinding:
    position: 5
- id: random
  doc: Random order.
  type: string
  inputBinding:
    position: 6
outputs: []
cwlVersion: v1.1
baseCommand:
- set_finder
