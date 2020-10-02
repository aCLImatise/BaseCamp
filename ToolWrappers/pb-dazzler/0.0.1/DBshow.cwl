class: CommandLineTool
id: DBshow.cwl
inputs:
- id: in_show_untrimmed_database
  doc: ': Show the untrimmed database.'
  type: boolean
  inputBinding:
    prefix: -u
- id: in_show_also_quiva
  doc: ': Show also the .quiva streams.'
  type: boolean
  inputBinding:
    prefix: -q
- id: in_show_also_arrow
  doc: ': Show also the .arrow pulse sequences.'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_show_default_read
  doc: ': Do not show the default read DNA sequences.'
  type: boolean
  inputBinding:
    prefix: -n
- id: in_show_mask_intervals
  doc: ': Show mask intervals and highlight in sequence.'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_produce_quiva_ignore
  doc: ': Produce a .quiva file (ignore all other options but -uU).'
  type: boolean
  inputBinding:
    prefix: -Q
- id: in_produce_arrow_ignore
  doc: ': Produce a .arrow file (ignore all other options but -uw).'
  type: boolean
  inputBinding:
    prefix: -A
- id: in_use_upper_case
  doc: ': Use upper case for DNA (default is lower case).'
  type: boolean
  inputBinding:
    prefix: -U
- id: in_print_w_bp
  doc: ': Print -w bp per line (default is 80).'
  type: boolean
  inputBinding:
    prefix: -w
- id: in_unq_auqa
  doc: ''
  type: boolean
  inputBinding:
    prefix: -unqaUQA
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- DBshow
