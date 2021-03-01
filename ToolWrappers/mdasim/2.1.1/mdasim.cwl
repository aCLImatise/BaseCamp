class: CommandLineTool
id: mdasim.cwl
inputs:
- id: in_log
  doc: = file name for a log file of all single nucleotide errors that happen during
    amplification
  type: boolean?
  inputBinding:
    prefix: --log
- id: in_mutation_rate
  doc: = chance of a nucleotide substitution
  type: boolean?
  inputBinding:
    prefix: --mutationrate
- id: in_verbose
  doc: extended verbose for debug mode
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_input
  doc: '= file name of reference DNA sequence (default: reference.fasta)'
  type: boolean?
  inputBinding:
    prefix: --input
- id: in_output
  doc: '= output files prefix , `Amplicons.fasta` will be appended to the prefix (default:
    out)'
  type: boolean?
  inputBinding:
    prefix: --output
- id: in_output_fragments
  doc: writes the lists of fragments and primer positions at the end of simulation
    in two txt files suffixed by Fragments.txt and PrimerPositions.txt
  type: boolean?
  inputBinding:
    prefix: --outputfragments
- id: in_primers
  doc: '= file name of input primers in fasta format (default: primerList.fasta)'
  type: boolean?
  inputBinding:
    prefix: --primers
- id: in_primer_no
  doc: '= average number of initial available primers (default: input reference length
    * coverage / frgLngth * 1000)'
  type: boolean?
  inputBinding:
    prefix: --primerNo
- id: in_frg_lng_th
  doc: '= average number of synthesized bases per phi29 (default: 70,000 nt; synthesized
    bases per phi29 has uniform distribution; variance = frgLngth^2 / 1200)'
  type: boolean?
  inputBinding:
    prefix: --frgLngth
- id: in_coverage
  doc: '= expected average coverage (default: 1000)'
  type: boolean?
  inputBinding:
    prefix: --coverage
- id: in_step_size
  doc: '= number of synthesized bases per phi29 in each step (default: 10000)'
  type: boolean?
  inputBinding:
    prefix: --stepSize
- id: in_alpha
  doc: '= normalized number of primers attached in each step (default: 0.5e-11)'
  type: boolean?
  inputBinding:
    prefix: --alpha
- id: in_attach_num
  doc: = number of primers attached per single strand of reference sequence in the
    first step. It can be any positive number. (overrides -A; alpha = attachNum /
    (input reference length * primerNo))
  type: boolean?
  inputBinding:
    prefix: --attachNum
- id: in_read_length
  doc: '= minimum length of output amplicons (default: 10)'
  type: boolean?
  inputBinding:
    prefix: --readLength
- id: in_single
  doc: Input reference is amplified as a single strand sequence
  type: boolean?
  inputBinding:
    prefix: --single
- id: in_optional
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_args
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mdasim
