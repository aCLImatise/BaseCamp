class: CommandLineTool
id: AssayGeneratorMetabo.cwl
inputs:
- id: in_in
  doc: "*                            MzML Input file (valid formats: 'mzml')"
  type: File
  inputBinding:
    prefix: -in
- id: in_in_id
  doc: "*                         FeatureXML Input with id information (accurate mass\
    \ search) (valid formats: 'featurexml')"
  type: File
  inputBinding:
    prefix: -in_id
- id: in_out
  doc: "*                           Assay library output file (valid formats: 'tsv')"
  type: File
  inputBinding:
    prefix: -out
- id: in_method
  doc: "(default: 'highest_intensity' valid: 'highest_intensity', 'consensus_spectrum')"
  type: string
  inputBinding:
    prefix: -method
- id: in_precursor_mz_tolerance
  doc: "Tolerance window for precursor selection (Feature selection in regard to the\
    \ precursor) (default: '0.005')"
  type: long
  inputBinding:
    prefix: -precursor_mz_tolerance
- id: in_precursor_mz_tolerance_unit
  doc: "Unit of the precursor_mz_tolerance (default: 'Da' valid: 'Da', 'ppm')"
  type: string
  inputBinding:
    prefix: -precursor_mz_tolerance_unit
- id: in_precursor_mz_distance
  doc: "Max m/z distance of the precursor entries of two spectra to be merged in [Da].\
    \ (default: '0.0001')"
  type: long
  inputBinding:
    prefix: -precursor_mz_distance
- id: in_precursor_rt_tolerance
  doc: "Tolerance window (left and right) for precursor selection [Da] (default: '5')"
  type: long
  inputBinding:
    prefix: -precursor_rt_tolerance
- id: in_cosine_similarity_threshold
  doc: "Threshold for cosine similarity of MS2 spectras of same precursor used for\
    \ consensus spectrum (default: '0.98')"
  type: long
  inputBinding:
    prefix: -cosine_similarity_threshold
- id: in_filter_by_convex_hulls
  doc: "Features have to have at least x MassTraces (default: '2')"
  type: long
  inputBinding:
    prefix: -filter_by_convex_hulls
- id: in_transition_threshold
  doc: "Further transitions need at least x% of the maximum intensity (default 10%)\
    \ (default: '10')"
  type: long
  inputBinding:
    prefix: -transition_threshold
- id: in_use_known_unknowns
  doc: Use features without identification information
  type: boolean
  inputBinding:
    prefix: -use_known_unknowns
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
  doc: "*                           Assay library output file (valid formats: 'tsv')"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- AssayGeneratorMetabo
