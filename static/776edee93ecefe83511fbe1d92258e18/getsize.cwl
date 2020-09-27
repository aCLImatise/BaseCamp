class: CommandLineTool
id: getsize.cwl
inputs:
- id: in_codons
  doc: ''
  type: boolean
  inputBinding:
    prefix: -codons
- id: in_x
  doc: ''
  type: boolean
  inputBinding:
    prefix: -x
- id: in_nd
  doc: ''
  type: boolean
  inputBinding:
    prefix: -nd
- id: in_l
  doc: ''
  type: boolean
  inputBinding:
    prefix: -l
- id: in_ft
  doc: ''
  type: boolean
  inputBinding:
    prefix: -ft
- id: in_f
  doc: ''
  type: boolean
  inputBinding:
    prefix: -f
- id: in_alph
  doc: ''
  type: File
  inputBinding:
    prefix: -alph
- id: in_prot
  doc: ''
  type: boolean
  inputBinding:
    prefix: -prot
- id: in_var_8
  doc: ''
  type: boolean
  inputBinding:
    prefix: -rna
- id: in_var_9
  doc: ''
  type: boolean
  inputBinding:
    prefix: -dna
- id: in_measure
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_data_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_do
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_just
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_print
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_translate
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_use
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_17
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_var_18
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_frame
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_letter
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_not
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_protein
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_statistics
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_containing
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_frequencies
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_specified
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_as
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_length
  doc: ''
  type: long
  inputBinding:
    position: 3
- id: in_sequences
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_six
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_warnings
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_c
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_about
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_b_file
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_frame_zero
  doc: ''
  type: long
  inputBinding:
    position: 4
- id: in_frames
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_latex
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_and
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_codon
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_duplicate
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_each
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_usage
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_freqs
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- getsize
