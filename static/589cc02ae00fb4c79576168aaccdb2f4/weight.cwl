class: CommandLineTool
id: weight.cwl
inputs:
- id: in_use_weighting_scheme
  doc: ': use BLOSUM weighting scheme at <f> fractional identity'
  type: string?
  inputBinding:
    prefix: -b
- id: in_filter_seqs_fractional
  doc: ': filter out seqs w/ fractional ident > <x> [0-1]'
  type: long?
  inputBinding:
    prefix: -f
- id: in_save_weightannotated_alignment
  doc: ': save weight-annotated alignment in <outfile>'
  type: File?
  inputBinding:
    prefix: -o
- id: in_use_based_scheme
  doc: ': use position based weight scheme (Henikoff & Henikoff)'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_sample_sequences_random
  doc: ': sample <n> sequences at random into a new alignment'
  type: string?
  inputBinding:
    prefix: -s
- id: in_use_scheme_sibbald
  doc: ': use Voronoi weight scheme (Sibbald & Argos)'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_in_format
  doc: ": specify alignment file format <s>\nallowed formats: SELEX, MSF, Clustal,\
    \ a2m, PHYLIP"
  type: File?
  inputBinding:
    prefix: --informat
- id: in_quiet
  doc: ': suppress verbose banner'
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_alignment_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- weight
