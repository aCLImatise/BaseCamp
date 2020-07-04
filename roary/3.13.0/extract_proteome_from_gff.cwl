class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/extract_proteome_from_gff.cwl
inputs:
- id: output_suffix
  doc: output suffix [proteome.faa]
  type: string
  inputBinding:
    prefix: -o
- id: translation_table
  doc: translation table [11]
  type: long
  inputBinding:
    prefix: -t
- id: filter_sequences_missing
  doc: filter sequences with missing data
  type: boolean
  inputBinding:
    prefix: -f
- id: verbose_output_stdout
  doc: verbose output to STDOUT
  type: boolean
  inputBinding:
    prefix: -v
- id: output_directory
  doc: output directory
  type: string
  inputBinding:
    prefix: -d
- id: print_version_exit
  doc: print version and exit
  type: boolean
  inputBinding:
    prefix: -w
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_proteome_from_gff
