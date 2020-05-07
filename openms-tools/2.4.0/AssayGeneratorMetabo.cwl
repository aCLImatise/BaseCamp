class: CommandLineTool
id: AssayGeneratorMetabo.cwl
inputs:
- id: in
  doc: "*                            MzML Input file (valid formats: 'mzml')"
  type: File
  inputBinding:
    prefix: -in
- id: in_id
  doc: "*                         FeatureXML Input with id information (accurate mass\
    \ search) (valid formats: 'featurexml')"
  type: File
  inputBinding:
    prefix: -in_id
- id: out
  doc: "*                           Assay library output file (valid formats: 'tsv')"
  type: File
  inputBinding:
    prefix: -out
- id: method
  doc: "(default: 'highest_intensity' valid: 'highest_intensity', 'consensus_spectrum')"
  type: string
  inputBinding:
    prefix: -method
- id: precursor_mz_tolerance
  doc: "Tolerance window for precursor selection (Feature selection in regard to the\
    \ precursor) (default: '0.005')"
  type: string
  inputBinding:
    prefix: -precursor_mz_tolerance
- id: precursor_mz_tolerance_unit
  doc: "Unit of the precursor_mz_tolerance (default: 'Da' valid: 'Da', 'ppm')"
  type: string
  inputBinding:
    prefix: -precursor_mz_tolerance_unit
- id: precursor_mz_distance
  doc: "Max m/z distance of the precursor entries of two spectra to be merged in [Da].\
    \ (default: '0.0001')"
  type: string
  inputBinding:
    prefix: -precursor_mz_distance
- id: precursor_rt_tolerance
  doc: "Tolerance window (left and right) for precursor selection [Da] (default: '5')"
  type: string
  inputBinding:
    prefix: -precursor_rt_tolerance
- id: cosine_similarity_threshold
  doc: "Threshold for cosine similarity of MS2 spectras of same precursor used for\
    \ consensus spectrum (default: '0.98')"
  type: string
  inputBinding:
    prefix: -cosine_similarity_threshold
- id: filter_by_convex_hulls
  doc: "Features have to have at least x MassTraces (default: '2')"
  type: string
  inputBinding:
    prefix: -filter_by_convex_hulls
- id: transition_threshold
  doc: "Further transitions need at least x% of the maximum intensity (default 10%)\
    \ (default: '10')"
  type: string
  inputBinding:
    prefix: -transition_threshold
- id: use_known_unknowns
  doc: Use features without identification information
  type: boolean
  inputBinding:
    prefix: -use_known_unknowns
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
- AssayGeneratorMetabo
