class: CommandLineTool
id: OpenSwathAssayGenerator.cwl
inputs:
- id: in_in
  doc: "*                           Input file (valid formats: 'tsv', 'mrm', 'pqp',\
    \ 'TraML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_in_type
  doc: "Input file type -- default: determined from file extension or content\n(valid:\
    \ 'tsv', 'mrm', 'pqp', 'TraML')"
  type: File?
  inputBinding:
    prefix: -in_type
- id: in_out
  doc: "*                          Output file (valid formats: 'tsv', 'pqp', 'TraML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_out_type
  doc: "Output file type -- default: determined from file extension or content\n(valid:\
    \ 'tsv', 'pqp', 'TraML')"
  type: File?
  inputBinding:
    prefix: -out_type
- id: in_min_transitions
  doc: "Minimal number of transitions (default: '6')"
  type: long?
  inputBinding:
    prefix: -min_transitions
- id: in_max_transitions
  doc: "Maximal number of transitions (default: '6')"
  type: long?
  inputBinding:
    prefix: -max_transitions
- id: in_allowed_fragment_types
  doc: "Allowed fragment types (default: 'b,y')"
  type: string?
  inputBinding:
    prefix: -allowed_fragment_types
- id: in_allowed_fragment_charges
  doc: "Allowed fragment charge states (default: '1,2,3,4')"
  type: long?
  inputBinding:
    prefix: -allowed_fragment_charges
- id: in_enable_detection_specific_losses
  doc: Set this flag if specific neutral losses for detection fragment ions should
    be allowed
  type: boolean?
  inputBinding:
    prefix: -enable_detection_specific_losses
- id: in_enable_detection_unspecific_losses
  doc: Set this flag if unspecific neutral losses (H2O1, H3N1, C1H2N2, C1H2N1O1) for
    detection fragment ions should be allowed
  type: boolean?
  inputBinding:
    prefix: -enable_detection_unspecific_losses
- id: in_precursor_mz_threshold
  doc: "MZ threshold in Thomson for precursor ion selection (default: '0.025')"
  type: double?
  inputBinding:
    prefix: -precursor_mz_threshold
- id: in_precursor_lower_mz_limit
  doc: "Lower MZ limit for precursor ions (default: '400.0')"
  type: double?
  inputBinding:
    prefix: -precursor_lower_mz_limit
- id: in_precursor_upper_mz_limit
  doc: "Upper MZ limit for precursor ions (default: '1200.0')"
  type: double?
  inputBinding:
    prefix: -precursor_upper_mz_limit
- id: in_product_mz_threshold
  doc: "MZ threshold in Thomson for fragment ion annotation (default: '0.025')"
  type: double?
  inputBinding:
    prefix: -product_mz_threshold
- id: in_product_lower_mz_limit
  doc: "Lower MZ limit for fragment ions (default: '350.0')"
  type: double?
  inputBinding:
    prefix: -product_lower_mz_limit
- id: in_product_upper_mz_limit
  doc: "Upper MZ limit for fragment ions (default: '2000.0')"
  type: double?
  inputBinding:
    prefix: -product_upper_mz_limit
- id: in_swath_windows_file
  doc: "Tab separated file containing the SWATH windows for exclusion of fragment\
    \ ions falling into the precursor isolation window: lower_offset upper_offset\
    \ \\newline 400 425 \\newline ... Note that the first line is a header and will\
    \ be skipped. (valid formats: 'txt')"
  type: File?
  inputBinding:
    prefix: -swath_windows_file
- id: in_uni_mod_file
  doc: "(Modified) Unimod XML file (http://www.unimod.org/xml/unimod.xml) describing\
    \ residue modifiability (valid formats: 'xml')"
  type: File?
  inputBinding:
    prefix: -unimod_file
- id: in_enable_ipf
  doc: "IPF: set this flag if identification transitions should be generated for IPF.\
    \ Note: Requires setting 'unimod_file'."
  type: boolean?
  inputBinding:
    prefix: -enable_ipf
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
  doc: "*                          Output file (valid formats: 'tsv', 'pqp', 'TraML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_out_type
  doc: "Output file type -- default: determined from file extension or content\n(valid:\
    \ 'tsv', 'pqp', 'TraML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_type)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openms:2.6.0--h4afb90d_0
cwlVersion: v1.1
baseCommand:
- OpenSwathAssayGenerator
