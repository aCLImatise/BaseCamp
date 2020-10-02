class: CommandLineTool
id: IDMerger.cwl
inputs:
- id: in_in
  doc: "*            Input files separated by blanks (valid formats: 'idXML')"
  type: string
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*            Output file (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: in_add_to
  doc: "Optional input file. IDs from 'in' are added to this file, but only if the\
    \ (modified) peptide sequences are not present yet (considering only best hits\
    \ per spectrum). (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -add_to
- id: in_annotate_file_origin
  doc: 'Store the original filename in each protein/peptide identification (meta value:
    file_origin).'
  type: boolean
  inputBinding:
    prefix: -annotate_file_origin
- id: in_pep_xml_prot_xml
  doc: "Merge idXML files derived from a pepXML and corresponding protXML file.\n\
    Exactly two input files are expected in this case. Not compatible with 'add_to'."
  type: boolean
  inputBinding:
    prefix: -pepxml_protxml
- id: in_ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "*            Output file (valid formats: 'idXML')"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- IDMerger
