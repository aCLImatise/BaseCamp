class: CommandLineTool
id: ../../../DBshow.cwl
inputs:
- id: show_untrimmed_database
  doc: ': Show the untrimmed database.'
  type: boolean
  inputBinding:
    prefix: -u
- id: show_also_quiva
  doc: ': Show also the .quiva streams.'
  type: boolean
  inputBinding:
    prefix: -q
- id: show_also_sequences
  doc: ': Show also the .arrow pulse sequences.'
  type: boolean
  inputBinding:
    prefix: -a
- id: show_default_read
  doc: ': Do not show the default read DNA sequences.'
  type: boolean
  inputBinding:
    prefix: -n
- id: show_mask_intervals
  doc: ': Show mask intervals and highlight in sequence.'
  type: boolean
  inputBinding:
    prefix: -m
- id: produce_quiva_file
  doc: ': Produce a .quiva file (ignore all other options but -uU).'
  type: boolean
  inputBinding:
    prefix: -Q
- id: produce_arrow_file
  doc: ': Produce a .arrow file (ignore all other options but -uw).'
  type: boolean
  inputBinding:
    prefix: -A
- id: use_upper_case
  doc: ': Use upper case for DNA (default is lower case).'
  type: boolean
  inputBinding:
    prefix: -U
- id: print_w_bp
  doc: ': Print -w bp per line (default is 80).'
  type: boolean
  inputBinding:
    prefix: -w
- id: unq_auqa
  doc: ''
  type: boolean
  inputBinding:
    prefix: -unqaUQA
outputs: []
cwlVersion: v1.1
baseCommand:
- DBshow
