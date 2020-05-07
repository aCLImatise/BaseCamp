class: CommandLineTool
id: PSMFeatureExtractor.cwl
inputs:
- id: in
  doc: "*                 Input file(s) (valid formats: 'mzid', 'idXML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*                 Output file in mzid or idXML format (valid formats: 'mzid',\
    \ 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: extra
  doc: List of the MetaData parameters to be included in a feature set for precolator.
  type: string
  inputBinding:
    prefix: -extra
- id: multiple_search_engines
  doc: Combine PSMs from different search engines by merging on scan level.
  type: boolean
  inputBinding:
    prefix: -multiple_search_engines
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
- PSMFeatureExtractor
