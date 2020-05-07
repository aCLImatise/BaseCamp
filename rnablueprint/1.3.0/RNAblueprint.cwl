class: CommandLineTool
id: RNAblueprint.cwl
inputs:
- id: v
  doc: '[ --verbose ]             be verbose'
  type: boolean
  inputBinding:
    prefix: -v
- id: d
  doc: '[ --debug ]               be verbose for debugging'
  type: boolean
  inputBinding:
    prefix: -d
- id: i
  doc: '[ --in ] arg              input file which contains the structures,  sequence
    constraints and the start sequence  [string] structures: secondary structures
    in dot-bracket  notation. one structure per input  line sequence constraints:
    Permanent sequence  constraints in IUPAC  notation [ACGTUWSMKRYBDHVN ] (optional)
    start sequence:  A initial RNA sequence to start the sampling from [ACGU]  (optional)'
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: '[ --out ] arg             output file for writing the sequences (default:  stdout)
    [string]'
  type: boolean
  inputBinding:
    prefix: -o
- id: g
  doc: '[ --graphml ] arg         write a GraphML file representing the dependency
    graph to the given filename (optional) [string]'
  type: boolean
  inputBinding:
    prefix: -g
- id: m
  doc: '[ --mode ] arg (=sample)  mode for sequence generation [string]: sample: stochastic
    sampling of all positions  (default) sample-clocal: Only sample one connected  component
    at a time starting from an initial sequence sample-plocal: Sample only single
    paths starting from an initial sequence clocal-neighbors: Only find neighboring  sequences
    to the initial start sequence by sampling one  connected component only plocal-neighbors:
    Only find neighboring  sequences to the initial start sequence by sampling one
    path  only'
  type: boolean
  inputBinding:
    prefix: -m
- id: s
  doc: '[ --seed ] arg            random number generator seed [unsigned long]'
  type: boolean
  inputBinding:
    prefix: -s
- id: n
  doc: '[ --num ] arg (=10)       number of designs (default: 10) [unsigned int]'
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- RNAblueprint
