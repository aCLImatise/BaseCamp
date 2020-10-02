class: CommandLineTool
id: AssayGeneratorMetabo.cwl
inputs:
- id: in_executable
  doc: SIRIUS executable e.g. sirius
  type: string
  inputBinding:
    prefix: -executable
- id: in_in
  doc: "<file(s)>*                                       MzML input file(s) used for\
    \ assay library generation (valid formats: 'mzML')"
  type: boolean
  inputBinding:
    prefix: -in
- id: in_in_id
  doc: "<file(s)>*                                    FeatureXML input file(s) containing\
    \ identification information (e.g. AccurateMassSearch) (valid formats: 'featureXML')"
  type: boolean
  inputBinding:
    prefix: -in_id
- id: in_out
  doc: "*                                         Assay library output file (valid\
    \ formats: 'tsv', 'traML', 'pqp')"
  type: File
  inputBinding:
    prefix: -out
- id: in_fragment_annotation
  doc: "Fragment annotation method (default: 'none' valid: 'none', 'sirius')"
  type: string
  inputBinding:
    prefix: -fragment_annotation
- id: in_method
  doc: "Spectrum with the highest precursor intensity or a consensus spectrum ist\
    \ used for assay library construction (if no fragment annotation is used). (default:\
    \ 'highest_intensity' valid: 'highest_intensity', 'consensus_spectrum')"
  type: string
  inputBinding:
    prefix: -method
- id: in_use_exact_mass
  doc: Use exact mass for fragment annotation
  type: boolean
  inputBinding:
    prefix: -use_exact_mass
- id: in_exclude_ms_two_precursor
  doc: Excludes precursor in ms2 from transition list
  type: boolean
  inputBinding:
    prefix: -exclude_ms2_precursor
- id: in_precursor_mz_distance
  doc: "Max m/z distance of the precursor entries of two spectra to be merged in [Da].\
    \ (default: '1.0e-04')"
  type: long
  inputBinding:
    prefix: -precursor_mz_distance
- id: in_precursor_rt_tolerance
  doc: "Tolerance window (left and right) for precursor selection [seconds] (default:\
    \ '5.0')"
  type: long
  inputBinding:
    prefix: -precursor_rt_tolerance
- id: in_use_known_unknowns
  doc: Use features without identification information
  type: boolean
  inputBinding:
    prefix: -use_known_unknowns
- id: in_min_transitions
  doc: "Minimal number of transitions (default: '3')"
  type: long
  inputBinding:
    prefix: -min_transitions
- id: in_max_transitions
  doc: "Maximal number of transitions (default: '3')"
  type: long
  inputBinding:
    prefix: -max_transitions
- id: in_cosine_similarity_threshold
  doc: "Threshold for cosine similarity of MS2 spectra from the same precursor used\
    \ in consensus spectrum creation (default: '0.98')"
  type: long
  inputBinding:
    prefix: -cosine_similarity_threshold
- id: in_transition_threshold
  doc: "Further transitions need at least x% of the maximum intensity (default 5%)\
    \ (default: '5.0')"
  type: long
  inputBinding:
    prefix: -transition_threshold
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
- id: out_out
  doc: "*                                         Assay library output file (valid\
    \ formats: 'tsv', 'traML', 'pqp')"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
- id: out_out_workspace_directory
  doc: Output directory for SIRIUS workspace
  type: Directory
  outputBinding:
    glob: $(inputs.in_out_workspace_directory)
cwlVersion: v1.1
baseCommand:
- AssayGeneratorMetabo
