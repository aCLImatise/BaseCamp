class: CommandLineTool
id: EncyclopeDIA.cwl
inputs:
- id: i
  doc: input .DIA or .MZML file
  type: boolean
  inputBinding:
    prefix: -i
- id: f
  doc: protein .FASTA database
  type: boolean
  inputBinding:
    prefix: -f
- id: l
  doc: library .ELIB file
  type: boolean
  inputBinding:
    prefix: -l
- id: browser
  doc: run ELIB Browser (use -browser -h for ELIB Browser help)
  type: boolean
  inputBinding:
    prefix: -browser
- id: lib_export
  doc: run Library Export (use -libexport -h for Library Export help)
  type: boolean
  inputBinding:
    prefix: -libexport
- id: o
  doc: 'output report file (default: [input file].encyclopedia.txt)'
  type: boolean
  inputBinding:
    prefix: -o
- id: acquisition
  doc: '(default: Non-Overlapping DIA)'
  type: boolean
  inputBinding:
    prefix: -acquisition
- id: enzyme
  doc: '(default: trypsin)'
  type: boolean
  inputBinding:
    prefix: -enzyme
- id: expected_peak_width
  doc: '(default: 25)'
  type: boolean
  inputBinding:
    prefix: -expectedPeakWidth
- id: filter_peak_lists
  doc: '(default: false)'
  type: boolean
  inputBinding:
    prefix: -filterPeaklists
- id: fixed
  doc: '(default: C=57.0214635)'
  type: boolean
  inputBinding:
    prefix: -fixed
- id: f_offset
  doc: '(default: 0)'
  type: boolean
  inputBinding:
    prefix: -foffset
- id: frag
  doc: '(default: CID)'
  type: boolean
  inputBinding:
    prefix: -frag
- id: f_to_l
  doc: '(default: 10)'
  type: boolean
  inputBinding:
    prefix: -ftol
- id: f_to_l_units
  doc: '(default: ppm)'
  type: boolean
  inputBinding:
    prefix: -ftolunits
- id: lf_to_l
  doc: '(default: 10)'
  type: boolean
  inputBinding:
    prefix: -lftol
- id: lf_to_l_units
  doc: '(default: ppm)'
  type: boolean
  inputBinding:
    prefix: -lftolunits
- id: localization_modification
  doc: '(default: none)'
  type: boolean
  inputBinding:
    prefix: -localizationModification
- id: min_intensity
  doc: '(default: -1.0)'
  type: boolean
  inputBinding:
    prefix: -minIntensity
- id: min_num_of_quantitative_peaks
  doc: '(default: 3)'
  type: boolean
  inputBinding:
    prefix: -minNumOfQuantitativePeaks
- id: min_quantitative_ion_number
  doc: '(default: 3)'
  type: boolean
  inputBinding:
    prefix: -minQuantitativeIonNumber
- id: number_of_extra_decoy_libraries_search_e
  doc: '(default: 0.0)'
  type: boolean
  inputBinding:
    prefix: -numberOfExtraDecoyLibrariesSearche
- id: number_of_quantitative_peaks
  doc: '(default: 5)'
  type: boolean
  inputBinding:
    prefix: -numberOfQuantitativePeaks
- id: percolator_protein_threshold
  doc: '(default: 0.01)'
  type: boolean
  inputBinding:
    prefix: -percolatorProteinThreshold
- id: percolator_threshold
  doc: '(default: 0.01)'
  type: boolean
  inputBinding:
    prefix: -percolatorThreshold
- id: percolator_version_number
  doc: '(default: 3)'
  type: boolean
  inputBinding:
    prefix: -percolatorVersionNumber
- id: p_offset
  doc: '(default: 0)'
  type: boolean
  inputBinding:
    prefix: -poffset
- id: precursor_isolation_margin
  doc: '(default: 0)'
  type: boolean
  inputBinding:
    prefix: -precursorIsolationMargin
- id: precursor_window_size
  doc: '(default: -1)'
  type: boolean
  inputBinding:
    prefix: -precursorWindowSize
- id: pto_l
  doc: '(default: 10)'
  type: boolean
  inputBinding:
    prefix: -ptol
- id: pto_l_units
  doc: '(default: ppm)'
  type: boolean
  inputBinding:
    prefix: -ptolunits
- id: rt_window_in_min
  doc: '(default: -1.0)'
  type: boolean
  inputBinding:
    prefix: -rtWindowInMin
- id: scoring_breadth_type
  doc: '(default: window)'
  type: boolean
  inputBinding:
    prefix: -scoringBreadthType
- id: verify_modification_ions
  doc: '(default: true)'
  type: boolean
  inputBinding:
    prefix: -verifyModificationIons
outputs: []
cwlVersion: v1.1
baseCommand:
- EncyclopeDIA
