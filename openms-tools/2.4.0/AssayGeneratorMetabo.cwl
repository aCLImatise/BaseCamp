#!/usr/bin/env cwl-runner

baseCommand:
- AssayGeneratorMetabo
class: CommandLineTool
cwlVersion: v1.0
id: assaygeneratormetabo
inputs:
- doc: "*                            MzML Input file (valid formats: 'mzml')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                         FeatureXML Input with id information (accurate mass\
    \ search) (valid formats: 'featurexml')"
  id: in_id
  inputBinding:
    prefix: -in_id
  type: File
- doc: "*                           Assay library output file (valid formats: 'tsv')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "(default: 'highest_intensity' valid: 'highest_intensity', 'consensus_spectrum')"
  id: method
  inputBinding:
    prefix: -method
  type: string
- doc: "Tolerance window for precursor selection (Feature selection in regard to the\
    \ precursor) (default: '0.005')"
  id: precursor_mz_tolerance
  inputBinding:
    prefix: -precursor_mz_tolerance
  type: string
- doc: "Unit of the precursor_mz_tolerance (default: 'Da' valid: 'Da', 'ppm')"
  id: precursor_mz_tolerance_unit
  inputBinding:
    prefix: -precursor_mz_tolerance_unit
  type: string
- doc: "Max m/z distance of the precursor entries of two spectra to be merged in [Da].\
    \ (default: '0.0001')"
  id: precursor_mz_distance
  inputBinding:
    prefix: -precursor_mz_distance
  type: string
- doc: "Tolerance window (left and right) for precursor selection [Da] (default: '5')"
  id: precursor_rt_tolerance
  inputBinding:
    prefix: -precursor_rt_tolerance
  type: string
- doc: "Threshold for cosine similarity of MS2 spectras of same precursor used for\
    \ consensus spectrum (default: '0.98')"
  id: cosine_similarity_threshold
  inputBinding:
    prefix: -cosine_similarity_threshold
  type: string
- doc: "Features have to have at least x MassTraces (default: '2')"
  id: filter_by_convex_hulls
  inputBinding:
    prefix: -filter_by_convex_hulls
  type: string
- doc: "Further transitions need at least x% of the maximum intensity (default 10%)\
    \ (default: '10')"
  id: transition_threshold
  inputBinding:
    prefix: -transition_threshold
  type: string
- doc: Use features without identification information
  id: use_known_unknowns
  inputBinding:
    prefix: -use_known_unknowns
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
