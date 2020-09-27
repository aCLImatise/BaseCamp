class: CommandLineTool
id: SiriusAdapter.cwl
inputs:
- id: in_executable
  doc: The Sirius executable. Provide a full or relative path, or make sure it can
    be found in your PATH environment.
  type: File
  inputBinding:
    prefix: -executable
- id: in_in
  doc: "*                                          MzML Input file (valid formats:\
    \ 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: in_in_feature_info
  doc: "FeatureXML input with feature and adduct information (valid formats: 'featureXML')"
  type: File
  inputBinding:
    prefix: -in_featureinfo
- id: in_out_sirius
  doc: "MzTab Output file for SiriusAdapter results (valid formats: 'mzTab')"
  type: File
  inputBinding:
    prefix: -out_sirius
- id: in_out_finger_id
  doc: "MzTab output file for CSI:FingerID, if this parameter is given, SIRIUS will\
    \ search for a molecular structure using CSI:FingerID after determining the sum\
    \ formula (valid formats: 'mzTab')"
  type: File
  inputBinding:
    prefix: -out_fingerid
- id: in_out_ms
  doc: "Internal SIRIUS .ms format after OpenMS preprocessing (valid formats: 'ms')"
  type: File
  inputBinding:
    prefix: -out_ms
- id: in_out_workspace_directory
  doc: Output directory for SIRIUS workspace
  type: Directory
  inputBinding:
    prefix: -out_workspace_directory
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
- id: out_out_sirius
  doc: "MzTab Output file for SiriusAdapter results (valid formats: 'mzTab')"
  type: File
  outputBinding:
    glob: $(inputs.in_out_sirius)
- id: out_out_finger_id
  doc: "MzTab output file for CSI:FingerID, if this parameter is given, SIRIUS will\
    \ search for a molecular structure using CSI:FingerID after determining the sum\
    \ formula (valid formats: 'mzTab')"
  type: File
  outputBinding:
    glob: $(inputs.in_out_finger_id)
- id: out_out_workspace_directory
  doc: Output directory for SIRIUS workspace
  type: Directory
  outputBinding:
    glob: $(inputs.in_out_workspace_directory)
cwlVersion: v1.1
baseCommand:
- SiriusAdapter
