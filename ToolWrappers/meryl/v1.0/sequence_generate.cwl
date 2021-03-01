class: CommandLineTool
id: sequence_generate.cwl
inputs:
- id: in_min
  doc: minimum sequence length
  type: long?
  inputBinding:
    prefix: -min
- id: in_max
  doc: maximum sequence length
  type: long?
  inputBinding:
    prefix: -max
- id: in_sequences
  doc: generate N sequences
  type: string?
  inputBinding:
    prefix: -sequences
- id: in_bases
  doc: generate at least B bases, no more than B+maxLength-1 bases.
  type: long?
  inputBinding:
    prefix: -bases
- id: in_gaussian
  doc: 99.73% of the reads (3 standard deviations) will be between min and max
  type: boolean?
  inputBinding:
    prefix: -gaussian
- id: in_mirror
  doc: sets GC/AT composition (default 0.50)
  type: double?
  inputBinding:
    prefix: -mirror
- id: in_at
  doc: sets GC/AT composition (default 0.50)
  type: double?
  inputBinding:
    prefix: -at
- id: in_sets_frequency_bases
  doc: sets frequency of A bases (default 0.25)
  type: double?
  inputBinding:
    prefix: -a
- id: in_sets_frequency_c
  doc: sets frequency of C bases (default 0.25)
  type: double?
  inputBinding:
    prefix: -c
- id: in_sets_frequency_g
  doc: sets frequency of G bases (default 0.25)
  type: double?
  inputBinding:
    prefix: -g
- id: in_sets_frequency_t
  doc: sets frequency of T bases (default 0.25)
  type: double?
  inputBinding:
    prefix: -t
- id: in_sequence
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_mode
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_sequence_file
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sequence
- generate
