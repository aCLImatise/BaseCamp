class: CommandLineTool
id: htsbox_tabix.cwl
inputs:
- id: in_preset_gff_bed
  doc: 'preset: gff, bed, sam or vcf [gff]'
  type: string?
  inputBinding:
    prefix: -p
- id: in_column_number_sequence
  doc: column number for sequence names (suppressed by -p) [1]
  type: long?
  inputBinding:
    prefix: -s
- id: in_column_number_region
  doc: column number for region start [4]
  type: long?
  inputBinding:
    prefix: -b
- id: in_column_number_set
  doc: column number for region end (if no end, set INT to -b) [5]
  type: long?
  inputBinding:
    prefix: -e
- id: in_specify_coordinates_zerobased
  doc: specify coordinates are zero-based
  type: boolean?
  inputBinding:
    prefix: '-0'
- id: in_skip_first_lines
  doc: skip first INT lines [0]
  type: long?
  inputBinding:
    prefix: -S
- id: in_skip_lines_starting
  doc: skip lines starting with CHAR [null]
  type: string?
  inputBinding:
    prefix: -c
- id: in_print_all_records
  doc: print all records
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_force_overwrite_index
  doc: force to overwrite existing index
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_set_minimal_size
  doc: set the minimal interval size to 1<<INT; 0 for the old tabix index [0]
  type: long?
  inputBinding:
    prefix: -m
- id: in_tab_ix
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_do_tgz
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- htsbox
- tabix
