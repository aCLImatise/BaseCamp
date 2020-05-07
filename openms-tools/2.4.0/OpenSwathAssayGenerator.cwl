class: CommandLineTool
id: OpenSwathAssayGenerator.cwl
inputs:
- id: in
  doc: "*                           Input file (valid formats: 'tsv', 'mrm', 'pqp',\
    \ 'TraML')"
  type: File
  inputBinding:
    prefix: -in
- id: in_type
  doc: "Input file type -- default: determined from file extension or content (valid:\
    \ 'tsv', 'mrm', 'pqp', 'TraML')"
  type: string
  inputBinding:
    prefix: -in_type
- id: out
  doc: "*                          Output file (valid formats: 'tsv', 'pqp', 'TraML')"
  type: File
  inputBinding:
    prefix: -out
- id: out_type
  doc: "Output file type -- default: determined from file extension or content (valid:\
    \ 'tsv', 'pqp', 'TraML')"
  type: string
  inputBinding:
    prefix: -out_type
- id: min_transitions
  doc: "Minimal number of transitions (default: '6')"
  type: long
  inputBinding:
    prefix: -min_transitions
- id: max_transitions
  doc: "Maximal number of transitions (default: '6')"
  type: long
  inputBinding:
    prefix: -max_transitions
- id: allowed_fragment_types
  doc: "Allowed fragment types (default: 'b,y')"
  type: string
  inputBinding:
    prefix: -allowed_fragment_types
- id: allowed_fragment_charges
  doc: "Allowed fragment charge states (default: '1,2,3,4')"
  type: string
  inputBinding:
    prefix: -allowed_fragment_charges
- id: enable_detection_specific_losses
  doc: Set this flag if specific neutral losses for detection fragment ions should
    be allowed
  type: boolean
  inputBinding:
    prefix: -enable_detection_specific_losses
- id: enable_detection_unspecific_losses
  doc: Set this flag if unspecific neutral losses (H2O1, H3N1, C1H2N2, C1H2N1O1) for
    detection fragment ions should be allowed
  type: boolean
  inputBinding:
    prefix: -enable_detection_unspecific_losses
- id: precursor_mz_threshold
  doc: "MZ threshold in Thomson for precursor ion selection (default: '0.025')"
  type: string
  inputBinding:
    prefix: -precursor_mz_threshold
- id: precursor_lower_mz_limit
  doc: "Lower MZ limit for precursor ions (default: '400')"
  type: string
  inputBinding:
    prefix: -precursor_lower_mz_limit
- id: precursor_upper_mz_limit
  doc: "Upper MZ limit for precursor ions (default: '1200')"
  type: string
  inputBinding:
    prefix: -precursor_upper_mz_limit
- id: product_mz_threshold
  doc: "MZ threshold in Thomson for fragment ion annotation (default: '0.025')"
  type: string
  inputBinding:
    prefix: -product_mz_threshold
- id: product_lower_mz_limit
  doc: "Lower MZ limit for fragment ions (default: '350')"
  type: string
  inputBinding:
    prefix: -product_lower_mz_limit
- id: product_upper_mz_limit
  doc: "Upper MZ limit for fragment ions (default: '2000')"
  type: string
  inputBinding:
    prefix: -product_upper_mz_limit
- id: swath_windows_file
  doc: "Tab separated file containing the SWATH windows for exclusion of fragment\
    \ ions falling into the precursor isolation window: lower_offset upper_offset\
    \ \\newline 400 425  \\newline ... Note that the first line is a header and will\
    \ be skipped. (valid formats: 'txt')"
  type: File
  inputBinding:
    prefix: -swath_windows_file
- id: uni_mod_file
  doc: "(Modified) Unimod XML file (http://www.unimod.org/xml/unimod.xml) describing\
    \ residue modifiability (valid formats: 'xml')"
  type: File
  inputBinding:
    prefix: -unimod_file
- id: enable_ipf
  doc: "IPF: set this flag if identification transitions should be generated for IPF.\
    \ Note: Requires setting 'unimod_file'."
  type: boolean
  inputBinding:
    prefix: -enable_ipf
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
- OpenSwathAssayGenerator
