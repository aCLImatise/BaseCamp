class: CommandLineTool
id: sequence_generate.cwl
inputs:
- id: in_min
  doc: "minimum sequence length\n-max M         maximum sequence length\n-sequences\
    \ N   generate N sequences\n-bases B       generate at least B bases, no more\
    \ than B+maxLength-1 bases.\n-gaussian      99.73% of the reads (3 standard deviations)\
    \ will be between min and max\n-mirror F\n-gc bias       sets GC/AT composition\
    \ (default 0.50)\n-at bias       sets GC/AT composition (default 0.50)\n-a freq\
    \        sets frequency of A bases (default 0.25)\n-c freq        sets frequency\
    \ of C bases (default 0.25)\n-g freq        sets frequency of G bases (default\
    \ 0.25)\n-t freq        sets frequency of T bases (default 0.25)"
  type: long
  inputBinding:
    prefix: -min
- id: in__results_sum
  doc: "-- results in a sum of 2.0 (1.25 + 0.25 + 0.25 + 0.25) so final frequencies\
    \ will be:\nA =         1.25/2 = 0.625\nC = G = T = 0.25/2 = 0.125."
  type: long
  inputBinding:
    prefix: -a
- id: in_gc
  doc: "-- sum is also 2.0, final frequencies will be:\nA =         1.00/2 = 0.5\n\
    C = G =     0.40/2 = 0.2\nT =         0.20/2 = 0.1"
  type: long
  inputBinding:
    prefix: -gc
- id: in_sequence
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_mode
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sequence
- generate
