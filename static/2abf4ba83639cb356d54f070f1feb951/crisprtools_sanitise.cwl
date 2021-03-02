class: CommandLineTool
id: crisprtools_sanitise.cwl
inputs:
- id: in_output_file_name
  doc: 'Output file name, creates a sanitised copy of the input file  [default: sanitise
    input file inplace]'
  type: File?
  inputBinding:
    prefix: -o
- id: in_sanitise_features_equivelent
  doc: Sanitise all features. Equivelent to -sdfc
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_sanitise_the_spacers
  doc: Sanitise the spacers
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_sanitise_direct_repeats
  doc: Sanitise the direct repeats
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_sanitise_flanking_sequences
  doc: Sanitise the flanking sequences
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_sanitise_the_contigs
  doc: Sanitise the contigs
  type: boolean?
  inputBinding:
    prefix: -c
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- crisprtools
- sanitise
