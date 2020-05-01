#!/usr/bin/env cwl-runner

baseCommand:
- OpenSwathAssayGenerator
class: CommandLineTool
cwlVersion: v1.0
id: openswathassaygenerator
inputs:
- doc: "*                           Input file (valid formats: 'tsv', 'mrm', 'pqp',\
    \ 'TraML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Input file type -- default: determined from file extension or content (valid:\
    \ 'tsv', 'mrm', 'pqp', 'TraML')"
  id: in_type
  inputBinding:
    prefix: -in_type
  type: string
- doc: "*                          Output file (valid formats: 'tsv', 'pqp', 'TraML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Output file type -- default: determined from file extension or content (valid:\
    \ 'tsv', 'pqp', 'TraML')"
  id: out_type
  inputBinding:
    prefix: -out_type
  type: string
- doc: "Minimal number of transitions (default: '6')"
  id: min_transitions
  inputBinding:
    prefix: -min_transitions
  type: long
- doc: "Maximal number of transitions (default: '6')"
  id: max_transitions
  inputBinding:
    prefix: -max_transitions
  type: long
- doc: "Allowed fragment types (default: 'b,y')"
  id: allowed_fragment_types
  inputBinding:
    prefix: -allowed_fragment_types
  type: string
- doc: "Allowed fragment charge states (default: '1,2,3,4')"
  id: allowed_fragment_charges
  inputBinding:
    prefix: -allowed_fragment_charges
  type: string
- doc: Set this flag if specific neutral losses for detection fragment ions should
    be allowed
  id: enable_detection_specific_losses
  inputBinding:
    prefix: -enable_detection_specific_losses
  type: boolean
- doc: Set this flag if unspecific neutral losses (H2O1, H3N1, C1H2N2, C1H2N1O1) for
    detection fragment ions should be allowed
  id: enable_detection_unspecific_losses
  inputBinding:
    prefix: -enable_detection_unspecific_losses
  type: boolean
- doc: "MZ threshold in Thomson for precursor ion selection (default: '0.025')"
  id: precursor_mz_threshold
  inputBinding:
    prefix: -precursor_mz_threshold
  type: string
- doc: "Lower MZ limit for precursor ions (default: '400.0')"
  id: precursor_lower_mz_limit
  inputBinding:
    prefix: -precursor_lower_mz_limit
  type: string
- doc: "Upper MZ limit for precursor ions (default: '1200.0')"
  id: precursor_upper_mz_limit
  inputBinding:
    prefix: -precursor_upper_mz_limit
  type: string
- doc: "MZ threshold in Thomson for fragment ion annotation (default: '0.025')"
  id: product_mz_threshold
  inputBinding:
    prefix: -product_mz_threshold
  type: string
- doc: "Lower MZ limit for fragment ions (default: '350.0')"
  id: product_lower_mz_limit
  inputBinding:
    prefix: -product_lower_mz_limit
  type: string
- doc: "Upper MZ limit for fragment ions (default: '2000.0')"
  id: product_upper_mz_limit
  inputBinding:
    prefix: -product_upper_mz_limit
  type: string
- doc: "Tab separated file containing the SWATH windows for exclusion of fragment\
    \ ions falling into the precursor isolation window: lower_offset upper_offset\
    \ \\newline 400 425  \\newline ... Note that the first line is a header and will\
    \ be skipped. (valid formats: 'txt')"
  id: swath_windows_file
  inputBinding:
    prefix: -swath_windows_file
  type: File
- doc: "(Modified) Unimod XML file (http://www.unimod.org/xml/unimod.xml) describing\
    \ residue modifiability (valid formats: 'xml')"
  id: uni_mod_file
  inputBinding:
    prefix: -unimod_file
  type: File
- doc: "IPF: set this flag if identification transitions should be generated for IPF.\
    \ Note: Requires setting 'unimod_file'."
  id: enable_ipf
  inputBinding:
    prefix: -enable_ipf
  type: boolean
- doc: Use the given TOPP INI file
  id: ini
  inputBinding:
    prefix: -ini
  type: File
- doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  id: threads
  inputBinding:
    prefix: -threads
  type: string
- doc: Writes the default configuration file
  id: write_ini
  inputBinding:
    prefix: -write_ini
  type: File
- doc: Shows all options (including advanced)
  id: helphelp
  inputBinding:
    prefix: --helphelp
  type: boolean
