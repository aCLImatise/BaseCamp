class: CommandLineTool
id: ta2ace.cwl
inputs:
- id: in_tigr_asm_file
  doc: .asm TIGR .asm file.  Must end in .asm
  type: File?
  inputBinding:
    prefix: -i
- id: in_output_file_default
  doc: Output file, by default <infile>.ace
  type: File?
  inputBinding:
    prefix: -o
- id: in_location_of_chromatograms
  doc: Location of the chromatograms
  type: string?
  inputBinding:
    prefix: -c
- id: in_location_phd_directory
  doc: Location of the PHD directory
  type: Directory?
  inputBinding:
    prefix: -p
- id: in_sequence_file_default
  doc: Sequence file, by default <infile>.seq
  type: File?
  inputBinding:
    prefix: -s
- id: in_database_using_i
  doc: Database (if not using -i and -s)
  type: string?
  inputBinding:
    prefix: -D
- id: in_database_info
  doc: Database info
  type: string?
  inputBinding:
    prefix: -S
- id: in_list_put_ace
  doc: List of assemblies to put in .ace file
  type: File?
  inputBinding:
    prefix: -U
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_default
  doc: Output file, by default <infile>.ace
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_default)
hints: []
cwlVersion: v1.1
baseCommand:
- ta2ace
