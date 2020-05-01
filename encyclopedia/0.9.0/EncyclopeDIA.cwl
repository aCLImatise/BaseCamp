#!/usr/bin/env cwl-runner

baseCommand:
- EncyclopeDIA
class: CommandLineTool
cwlVersion: v1.0
id: encyclopedia
inputs:
- doc: input .DIA or .MZML file
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: protein .FASTA database
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: library .ELIB file
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: run ELIB Browser (use -browser -h for ELIB Browser help)
  id: browser
  inputBinding:
    prefix: -browser
  type: boolean
- doc: run Library Export (use -libexport -h for Library Export help)
  id: lib_export
  inputBinding:
    prefix: -libexport
  type: boolean
- doc: 'output report file (default: [input file].encyclopedia.txt)'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '(default: Non-Overlapping DIA)'
  id: acquisition
  inputBinding:
    prefix: -acquisition
  type: boolean
- doc: '(default: trypsin)'
  id: enzyme
  inputBinding:
    prefix: -enzyme
  type: boolean
- doc: '(default: 25)'
  id: expected_peak_width
  inputBinding:
    prefix: -expectedPeakWidth
  type: boolean
- doc: '(default: false)'
  id: filter_peak_lists
  inputBinding:
    prefix: -filterPeaklists
  type: boolean
- doc: '(default: C=57.0214635)'
  id: fixed
  inputBinding:
    prefix: -fixed
  type: boolean
- doc: '(default: 0)'
  id: f_offset
  inputBinding:
    prefix: -foffset
  type: boolean
- doc: '(default: CID)'
  id: frag
  inputBinding:
    prefix: -frag
  type: boolean
- doc: '(default: 10)'
  id: f_to_l
  inputBinding:
    prefix: -ftol
  type: boolean
- doc: '(default: ppm)'
  id: f_to_l_units
  inputBinding:
    prefix: -ftolunits
  type: boolean
- doc: '(default: 10)'
  id: lf_to_l
  inputBinding:
    prefix: -lftol
  type: boolean
- doc: '(default: ppm)'
  id: lf_to_l_units
  inputBinding:
    prefix: -lftolunits
  type: boolean
- doc: '(default: none)'
  id: localization_modification
  inputBinding:
    prefix: -localizationModification
  type: boolean
- doc: '(default: -1.0)'
  id: min_intensity
  inputBinding:
    prefix: -minIntensity
  type: boolean
- doc: '(default: 3)'
  id: min_num_of_quantitative_peaks
  inputBinding:
    prefix: -minNumOfQuantitativePeaks
  type: boolean
- doc: '(default: 3)'
  id: min_quantitative_ion_number
  inputBinding:
    prefix: -minQuantitativeIonNumber
  type: boolean
- doc: '(default: 0.0)'
  id: number_of_extra_decoy_libraries_search_e
  inputBinding:
    prefix: -numberOfExtraDecoyLibrariesSearche
  type: boolean
- doc: '(default: 5)'
  id: number_of_quantitative_peaks
  inputBinding:
    prefix: -numberOfQuantitativePeaks
  type: boolean
- doc: '(default: 0.01)'
  id: percolator_protein_threshold
  inputBinding:
    prefix: -percolatorProteinThreshold
  type: boolean
- doc: '(default: 0.01)'
  id: percolator_threshold
  inputBinding:
    prefix: -percolatorThreshold
  type: boolean
- doc: '(default: 3)'
  id: percolator_version_number
  inputBinding:
    prefix: -percolatorVersionNumber
  type: boolean
- doc: '(default: 0)'
  id: p_offset
  inputBinding:
    prefix: -poffset
  type: boolean
- doc: '(default: 0)'
  id: precursor_isolation_margin
  inputBinding:
    prefix: -precursorIsolationMargin
  type: boolean
- doc: '(default: -1)'
  id: precursor_window_size
  inputBinding:
    prefix: -precursorWindowSize
  type: boolean
- doc: '(default: 10)'
  id: pto_l
  inputBinding:
    prefix: -ptol
  type: boolean
- doc: '(default: ppm)'
  id: pto_l_units
  inputBinding:
    prefix: -ptolunits
  type: boolean
- doc: '(default: -1.0)'
  id: rt_window_in_min
  inputBinding:
    prefix: -rtWindowInMin
  type: boolean
- doc: '(default: window)'
  id: scoring_breadth_type
  inputBinding:
    prefix: -scoringBreadthType
  type: boolean
- doc: '(default: true)'
  id: verify_modification_ions
  inputBinding:
    prefix: -verifyModificationIons
  type: boolean
