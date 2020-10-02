class: CommandLineTool
id: mascot_to_pepxml.rb.cwl
inputs:
- id: in_replace_output
  doc: Dont skip analyses for which the output file already exists [false]
  type: File
  inputBinding:
    prefix: --replace-output
- id: in_output
  doc: An explicitly named output file.
  type: File
  inputBinding:
    prefix: --output
- id: in_database
  doc: Specify the database to use for this search. Can be a named protk database
    or the path to a fasta file [sphuman]
  type: File
  inputBinding:
    prefix: --database
- id: in_enzyme
  doc: Enzyme [Trypsin]
  type: string
  inputBinding:
    prefix: --enzyme
- id: in_short_id
  doc: Use short protein id as per Mascot result (default uses full protein ids in
    fasta file) [false]
  type: boolean
  inputBinding:
    prefix: --shortid
- id: in_file_two_dot_dat
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_replace_output
  doc: Dont skip analyses for which the output file already exists [false]
  type: File
  outputBinding:
    glob: $(inputs.in_replace_output)
- id: out_output
  doc: An explicitly named output file.
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- mascot_to_pepxml.rb
