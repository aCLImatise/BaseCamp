class: CommandLineTool
id: PSMFeatureExtractor.cwl
inputs:
- id: in_in
  doc: "*                 Input file(s) (valid formats: 'idXML', 'mzid')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*                 Output file in mzid or idXML format (valid formats: 'idXML',\
    \ 'mzid')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_out_type
  doc: "Output file type -- default: determined from file extension or content. (valid:\
    \ 'idXML', 'mzid')"
  type: File?
  inputBinding:
    prefix: -out_type
- id: in_extra
  doc: List of the MetaData parameters to be included in a feature set for precolator.
  type: string?
  inputBinding:
    prefix: -extra
- id: in_multiple_search_engines
  doc: Combine PSMs from different search engines by merging on scan level.
  type: boolean?
  inputBinding:
    prefix: -multiple_search_engines
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
  doc: "*                 Output file in mzid or idXML format (valid formats: 'idXML',\
    \ 'mzid')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_out_type
  doc: "Output file type -- default: determined from file extension or content. (valid:\
    \ 'idXML', 'mzid')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_type)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openms:2.6.0--h4afb90d_0
cwlVersion: v1.1
baseCommand:
- PSMFeatureExtractor
