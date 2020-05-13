class: CommandLineTool
id: sequence_generate.cwl
inputs:
- id: gc
  doc: sets GC/AT composition (default 0.50)
  type: string
  inputBinding:
    prefix: -gc
- id: at
  doc: sets GC/AT composition (default 0.50)
  type: string
  inputBinding:
    prefix: -at
- id: a
  doc: sets frequency of A bases (default 0.25)
  type: string
  inputBinding:
    prefix: -a
- id: c
  doc: sets frequency of C bases (default 0.25)
  type: string
  inputBinding:
    prefix: -c
- id: g
  doc: sets frequency of G bases (default 0.25)
  type: string
  inputBinding:
    prefix: -g
- id: t
  doc: sets frequency of T bases (default 0.25)
  type: string
  inputBinding:
    prefix: -t
- id: gc
  doc: 0.6 -a 0.1 -t 0.3 -- sets G = C = 0.3, A = 0.1, T = 0.3
  type: boolean
  inputBinding:
    prefix: -gc
- id: a
  doc: 0.1 -t 0.3 -gc 0.6 -- sets G = C = 0.3, A = T = 0.15
  type: boolean
  inputBinding:
    prefix: -a
- id: a
  doc: '1.25 -- results in a sum of 2.0 (1.25 + 0.25 + 0.25 + 0.25) so final frequencies
    will be: A =         1.25/2 = 0.625 C = G = T = 0.25/2 = 0.125.'
  type: boolean
  inputBinding:
    prefix: -a
- id: gc
  doc: '0.8 -a 1.0 -t 0.2 -- sum is also 2.0, final frequencies will be: A =         1.00/2
    = 0.5 C = G =     0.40/2 = 0.2 T =         0.20/2 = 0.1'
  type: boolean
  inputBinding:
    prefix: -gc
outputs: []
cwlVersion: v1.1
baseCommand:
- sequence
- generate
