class: CommandLineTool
id: CopomuS.py.cwl
inputs:
- id: query
  doc: The query sequence.
  type: string
  inputBinding:
    prefix: --query
- id: target
  doc: The target sequence.
  type: string
  inputBinding:
    prefix: --target
- id: qidxpos0
  doc: 'The starting index for the query. (Default: 1)'
  type: string
  inputBinding:
    prefix: --qIdxPos0
- id: tidxpos0
  doc: 'The starting index for the target. (Default: 1)'
  type: string
  inputBinding:
    prefix: --tIdxPos0
- id: measure
  doc: "Which measure to add to the output, can be used multiple times. Output will\
    \ be sorted in order of measures specified. (Default: ['mfeCover', 'E', 'minDeltaE'])"
  type: string
  inputBinding:
    prefix: --measure
- id: candidate_selection
  doc: 'Defines the method used to select candidate base pairs. (Default: mfe)'
  type: string
  inputBinding:
    prefix: --candidateSelection
- id: candidate_filter
  doc: 'Filters candidate base pairs, can be used multiple times. (Default: [])'
  type: string
  inputBinding:
    prefix: --candidateFilter
- id: generator
  doc: 'Defines the method used for generating mutated sequences. (Default: flip)'
  type: string
  inputBinding:
    prefix: --generator
- id: mutation_encoding
  doc: Allows direct candidate selection by specifying a mutation encoding. Overwrites
    options -s, -f, and -g
  type: string
  inputBinding:
    prefix: --mutationEncoding
- id: o
  doc: '[OUTPUT], --output [OUTPUT] Which file the output should be written to. (Default:
    STDOUT)'
  type: boolean
  inputBinding:
    prefix: -o
- id: delimiter
  doc: 'Defines the delimiter used to separate columns in the output, default tab.
    (Default: \t)'
  type: string
  inputBinding:
    prefix: --delimiter
- id: parameter_file
  doc: Optional parameter file for IntaRNA to provide further parameters and prediction
    constraints.
  type: string
  inputBinding:
    prefix: --parameterFile
- id: threads
  doc: Threads used for IntaRNA call
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- CopomuS.py
