class: CommandLineTool
id: mdasim.cwl
inputs:
- id: optional
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: args
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: log
  doc: = file name for a log file of all single nucleotide errors that happen during
    amplification
  type: boolean
  inputBinding:
    prefix: --log
- id: mutation_rate
  doc: = chance of a nucleotide substitution
  type: boolean
  inputBinding:
    prefix: --mutationrate
- id: verbose
  doc: extended verbose for debug mode
  type: boolean
  inputBinding:
    prefix: --verbose
- id: input
  doc: '= file name of reference DNA sequence (default: reference.fasta)'
  type: boolean
  inputBinding:
    prefix: --input
- id: output
  doc: '= output files prefix , `Amplicons.fasta` will be appended to the prefix (default:
    out)'
  type: boolean
  inputBinding:
    prefix: --output
- id: output_fragments
  doc: writes the lists of fragments and primer positions at the end of simulation
    in two txt files suffixed by Fragments.txt and PrimerPositions.txt
  type: boolean
  inputBinding:
    prefix: --outputfragments
- id: primers
  doc: '= file name of input primers in fasta format (default: primerList.fasta)'
  type: boolean
  inputBinding:
    prefix: --primers
- id: primer_no
  doc: '= average number of initial available primers (default: input reference length
    * coverage / frgLngth * 1000)'
  type: boolean
  inputBinding:
    prefix: --primerNo
- id: frg_lng_th
  doc: '= average number of synthesized bases per phi29 (default: 70,000 nt; synthesized
    bases per phi29 has uniform distribution; variance = frgLngth^2 / 1200)'
  type: boolean
  inputBinding:
    prefix: --frgLngth
- id: coverage
  doc: '= expected average coverage (default: 1000)'
  type: boolean
  inputBinding:
    prefix: --coverage
- id: step_size
  doc: '= number of synthesized bases per phi29 in each step (default: 10000)'
  type: boolean
  inputBinding:
    prefix: --stepSize
- id: alpha
  doc: '= normalized number of primers attached in each step (default: 0.5e-11)'
  type: boolean
  inputBinding:
    prefix: --alpha
- id: attach_num
  doc: = number of primers attached per single strand of reference sequence in the
    first step. It can be any positive number. (overrides -A; alpha = attachNum /
    (input reference length * primerNo))
  type: boolean
  inputBinding:
    prefix: --attachNum
- id: read_length
  doc: '= minimum length of output amplicons (default: 10)'
  type: boolean
  inputBinding:
    prefix: --readLength
- id: single
  doc: Input reference is amplified as a single strand sequence
  type: boolean
  inputBinding:
    prefix: --single
outputs: []
cwlVersion: v1.1
baseCommand:
- mdasim
