class: CommandLineTool
id: ../../../htsbox_tabix.cwl
inputs:
- id: preset_gff_bed
  doc: 'preset: gff, bed, sam or vcf [gff]'
  type: string
  inputBinding:
    prefix: -p
- id: column_number_sequence
  doc: column number for sequence names (suppressed by -p) [1]
  type: long
  inputBinding:
    prefix: -s
- id: column_number_region_start
  doc: column number for region start [4]
  type: long
  inputBinding:
    prefix: -b
- id: column_number_region_end
  doc: column number for region end (if no end, set INT to -b) [5]
  type: long
  inputBinding:
    prefix: -e
- id: specify_coordinates_zerobased
  doc: specify coordinates are zero-based
  type: boolean
  inputBinding:
    prefix: '-0'
- id: skip_first_lines
  doc: skip first INT lines [0]
  type: long
  inputBinding:
    prefix: -S
- id: skip_lines_starting
  doc: skip lines starting with CHAR [null]
  type: string
  inputBinding:
    prefix: -c
- id: print_all_records
  doc: print all records
  type: boolean
  inputBinding:
    prefix: -a
- id: force_overwrite_index
  doc: force to overwrite existing index
  type: boolean
  inputBinding:
    prefix: -f
- id: set_minimal_size
  doc: set the minimal interval size to 1<<INT; 0 for the old tabix index [0]
  type: long
  inputBinding:
    prefix: -m
- id: tab_ix
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_do_tgz
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- htsbox
- tabix
