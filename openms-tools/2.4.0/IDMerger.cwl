class: CommandLineTool
id: IDMerger.cwl
inputs:
- id: in
  doc: "*            Input files separated by blanks (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*            Output file (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: add_to
  doc: "Optional input file. IDs from 'in' are added to this file, but only if the\
    \ (modified) peptide sequences are not present yet (considering only best hits\
    \ per spectrum). (valid formats:  'idXML')"
  type: File
  inputBinding:
    prefix: -add_to
- id: annotate_file_origin
  doc: 'Store the original filename in each protein/peptide identification (meta value:
    file_origin).'
  type: boolean
  inputBinding:
    prefix: -annotate_file_origin
- id: pep_xml_prot_xml
  doc: Merge idXML files derived from a pepXML and corresponding protXML file. Exactly
    two input files are expected in this case. Not compatible with 'add_to'.
  type: boolean
  inputBinding:
    prefix: -pepxml_protxml
- id: ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: string
  inputBinding:
    prefix: -threads
- id: write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs: []
cwlVersion: v1.1
baseCommand:
- IDMerger
