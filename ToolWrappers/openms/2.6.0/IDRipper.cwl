class: CommandLineTool
id: IDRipper.cwl
inputs:
- id: in_in
  doc: "*        Input file, in which the protein/peptide identifications must be\
    \ tagged with 'file_origin' (valid formats: 'idXML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "The path to this file is used as the output directory. (valid formats: 'idXML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_out_path
  doc: Directory for the output files after ripping according to 'file_origin'. If
    'out_path' is set, 'out' is ignored.
  type: Directory?
  inputBinding:
    prefix: -out_path
- id: in_ini
  doc: Use the given TOPP INI file
  type: File?
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long?
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File?
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean?
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "The path to this file is used as the output directory. (valid formats: 'idXML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_out_path
  doc: Directory for the output files after ripping according to 'file_origin'. If
    'out_path' is set, 'out' is ignored.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openms:2.6.0--h4afb90d_0
cwlVersion: v1.1
baseCommand:
- IDRipper
