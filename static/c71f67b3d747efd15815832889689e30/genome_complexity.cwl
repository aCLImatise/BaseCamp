class: CommandLineTool
id: genome_complexity.cwl
inputs:
- id: f
  doc: fasta file to evaluate
  type: string
  inputBinding:
    prefix: -f
- id: k
  doc: Length of mers to consider (default:30)
  type: string
  inputBinding:
    prefix: -k
- id: c
  doc: Just compress graph, dont apply other simplifications
  type: boolean
  inputBinding:
    prefix: -c
- id: e
  doc: Dont comprss the very first or last node in the graph
  type: boolean
  inputBinding:
    prefix: -e
- id: c
  doc: Interpret genome as circular
  type: boolean
  inputBinding:
    prefix: -C
- id: p
  doc: Display the start positions and length of each sequence
  type: boolean
  inputBinding:
    prefix: -p
- id: d
  doc: Display the sequences for edge node
  type: boolean
  inputBinding:
    prefix: -d
- id: d
  doc: Only show first and last 4 bp for sequences longer than <len>
  type: string
  inputBinding:
    prefix: -D
- id: s
  doc: Just Compute graph statistics
  type: boolean
  inputBinding:
    prefix: -S
outputs: []
cwlVersion: v1.1
baseCommand:
- genome-complexity
