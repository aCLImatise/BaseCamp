class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tabix.cwl
inputs:
- id: preset_gff_bed
  doc: 'preset: gff, bed, sam, vcf, psltbl [gff]'
  type: string
  inputBinding:
    prefix: -p
- id: sequence_name_column
  doc: sequence name column [1]
  type: long
  inputBinding:
    prefix: -s
- id: start_column
  doc: start column [4]
  type: long
  inputBinding:
    prefix: -b
- id: end_column_can
  doc: end column; can be identical to '-b' [5]
  type: long
  inputBinding:
    prefix: -e
- id: skip_first_lines
  doc: skip first INT lines [0]
  type: long
  inputBinding:
    prefix: -S
- id: symbol_commentmeta_lines
  doc: symbol for comment/meta lines [#]
  type: string
  inputBinding:
    prefix: -c
- id: replace_header_content
  doc: replace the header with the content of FILE [null]
  type: File
  inputBinding:
    prefix: -r
- id: region_bed_file
  doc: region1 is a BED file (entire file will be read)
  type: boolean
  inputBinding:
    prefix: -B
- id: zerobased_coordinate
  doc: zero-based coordinate
  type: boolean
  inputBinding:
    prefix: '-0'
- id: print_only_lines
  doc: print only the header lines
  type: boolean
  inputBinding:
    prefix: -H
- id: list_chromosome_names
  doc: list chromosome names
  type: boolean
  inputBinding:
    prefix: -l
- id: force_overwrite_index
  doc: force to overwrite the index
  type: boolean
  inputBinding:
    prefix: -f
- id: indottabdotbgz
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tabix
