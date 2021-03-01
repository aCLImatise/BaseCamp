class: CommandLineTool
id: extract_proteome_from_gff.cwl
inputs:
- id: in_output_suffix
  doc: output suffix [proteome.faa]
  type: string?
  inputBinding:
    prefix: -o
- id: in_translation_table
  doc: translation table [11]
  type: long?
  inputBinding:
    prefix: -t
- id: in_filter_sequences_missing
  doc: filter sequences with missing data
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_verbose_output_stdout
  doc: verbose output to STDOUT
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_output_directory
  doc: output directory
  type: Directory?
  inputBinding:
    prefix: -d
- id: in_print_version_exit
  doc: print version and exit
  type: boolean?
  inputBinding:
    prefix: -w
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- extract_proteome_from_gff
