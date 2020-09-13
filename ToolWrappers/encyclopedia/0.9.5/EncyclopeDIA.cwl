class: CommandLineTool
id: ../../../EncyclopeDIA.cwl
inputs:
- id: in_input_dia_mzml
  doc: input .DIA or .MZML file
  type: boolean
  inputBinding:
    prefix: -i
- id: in_protein_fasta_database
  doc: protein .FASTA database
  type: boolean
  inputBinding:
    prefix: -f
- id: in_library_elib_file
  doc: library .ELIB file
  type: boolean
  inputBinding:
    prefix: -l
- id: in_walnut
  doc: Walnut FASTA search (use -walnut -h for help)
  type: string
  inputBinding:
    prefix: -walnut
- id: in_browser
  doc: run ELIB Browser (use -browser -h for ELIB Browser help)
  type: boolean
  inputBinding:
    prefix: -browser
- id: in_lib_export
  doc: run Library Export (use -libexport -h for Library Export help)
  type: boolean
  inputBinding:
    prefix: -libexport
- id: in_convert
  doc: run files converter (use -convert -h for help)
  type: boolean
  inputBinding:
    prefix: -convert
- id: in_output_report_file
  doc: 'output report file (default: [input file].encyclopedia.txt)'
  type: boolean
  inputBinding:
    prefix: -o
- id: in_acquisition
  doc: '(default: DIA)'
  type: boolean
  inputBinding:
    prefix: -acquisition
- id: in_enzyme
  doc: '(default: trypsin)'
  type: boolean
  inputBinding:
    prefix: -enzyme
- id: in_expected_peak_width
  doc: '(default: 25)'
  type: boolean
  inputBinding:
    prefix: -expectedPeakWidth
- id: in_filter_peak_lists
  doc: '(default: false)'
  type: boolean
  inputBinding:
    prefix: -filterPeaklists
- id: in_fixed
  doc: '(default: C=57.0214635)'
  type: boolean
  inputBinding:
    prefix: -fixed
- id: in_f_offset
  doc: '(default: 0)'
  type: boolean
  inputBinding:
    prefix: -foffset
- id: in_frag
  doc: '(default: CID)'
  type: boolean
  inputBinding:
    prefix: -frag
- id: in_f_to_l
  doc: '(default: 10)'
  type: boolean
  inputBinding:
    prefix: -ftol
- id: in_f_to_l_units
  doc: '(default: ppm)'
  type: boolean
  inputBinding:
    prefix: -ftolunits
- id: in_lf_to_l
  doc: '(default: 10)'
  type: boolean
  inputBinding:
    prefix: -lftol
- id: in_lf_to_l_units
  doc: '(default: ppm)'
  type: boolean
  inputBinding:
    prefix: -lftolunits
- id: in_localization_modification
  doc: '(default: none)'
  type: boolean
  inputBinding:
    prefix: -localizationModification
- id: in_min_intensity
  doc: '(default: -1.0)'
  type: boolean
  inputBinding:
    prefix: -minIntensity
- id: in_min_num_of_quantitative_peaks
  doc: '(default: 3)'
  type: boolean
  inputBinding:
    prefix: -minNumOfQuantitativePeaks
- id: in_min_quantitative_ion_number
  doc: '(default: 3)'
  type: boolean
  inputBinding:
    prefix: -minQuantitativeIonNumber
- id: in_number_of_extra_decoy_libraries_search_e
  doc: '(default: 0.0)'
  type: boolean
  inputBinding:
    prefix: -numberOfExtraDecoyLibrariesSearche
- id: in_number_of_quantitative_peaks
  doc: '(default: 5)'
  type: boolean
  inputBinding:
    prefix: -numberOfQuantitativePeaks
- id: in_percolator_protein_threshold
  doc: '(default: 0.01)'
  type: boolean
  inputBinding:
    prefix: -percolatorProteinThreshold
- id: in_percolator_threshold
  doc: '(default: 0.01)'
  type: boolean
  inputBinding:
    prefix: -percolatorThreshold
- id: in_percolator_training_fdr
  doc: '(default: 0.0)'
  type: boolean
  inputBinding:
    prefix: -percolatorTrainingFDR
- id: in_percolator_training_set_size
  doc: '(default: 200000)'
  type: boolean
  inputBinding:
    prefix: -percolatorTrainingSetSize
- id: in_percolator_version_number
  doc: '(default: 3)'
  type: boolean
  inputBinding:
    prefix: -percolatorVersionNumber
- id: in_p_offset
  doc: '(default: 0)'
  type: boolean
  inputBinding:
    prefix: -poffset
- id: in_precursor_isolation_margin
  doc: '(default: 0)'
  type: boolean
  inputBinding:
    prefix: -precursorIsolationMargin
- id: in_precursor_window_size
  doc: '(default: -1)'
  type: boolean
  inputBinding:
    prefix: -precursorWindowSize
- id: in_pto_l
  doc: '(default: 10)'
  type: boolean
  inputBinding:
    prefix: -ptol
- id: in_pto_l_units
  doc: '(default: ppm)'
  type: boolean
  inputBinding:
    prefix: -ptolunits
- id: in_rt_window_in_min
  doc: '(default: -1.0)'
  type: boolean
  inputBinding:
    prefix: -rtWindowInMin
- id: in_scoring_breadth_type
  doc: '(default: window)'
  type: boolean
  inputBinding:
    prefix: -scoringBreadthType
- id: in_verify_modification_ions
  doc: '(default: true)'
  type: boolean
  inputBinding:
    prefix: -verifyModificationIons
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- EncyclopeDIA
