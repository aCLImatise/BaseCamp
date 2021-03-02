class: CommandLineTool
id: MapRTTransformer.cwl
inputs:
- id: in_in
  doc: "Input file to transform (separated by blanks) (valid formats: 'mzML', 'featureXML',\
    \ 'consensusXML', 'idXML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "Output file (same file type as 'in'). This option or 'trafo_out' has to be\
    \ provided; they can be used together. (valid formats: 'mzML', 'featureXML', 'consensusXML',\
    \ 'idXML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_traf_o_in
  doc: "*    Transformation to apply (valid formats: 'trafoXML')"
  type: File?
  inputBinding:
    prefix: -trafo_in
- id: in_traf_o_out
  doc: "Transformation output file. This option or 'out' has to be provided; they\
    \ can be used together. (valid formats: 'trafoXML')"
  type: File?
  inputBinding:
    prefix: -trafo_out
- id: in_invert
  doc: Invert transformation (approximatively) before applying it
  type: boolean?
  inputBinding:
    prefix: -invert
- id: in_store_original_rt
  doc: Store the original retention times (before transformation) as meta data in
    the output file
  type: File?
  inputBinding:
    prefix: -store_original_rt
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
  doc: "Output file (same file type as 'in'). This option or 'trafo_out' has to be\
    \ provided; they can be used together. (valid formats: 'mzML', 'featureXML', 'consensusXML',\
    \ 'idXML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_traf_o_out
  doc: "Transformation output file. This option or 'out' has to be provided; they\
    \ can be used together. (valid formats: 'trafoXML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_traf_o_out)
- id: out_store_original_rt
  doc: Store the original retention times (before transformation) as meta data in
    the output file
  type: File?
  outputBinding:
    glob: $(inputs.in_store_original_rt)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openms:2.6.0--h4afb90d_0
cwlVersion: v1.1
baseCommand:
- MapRTTransformer
