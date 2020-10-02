class: CommandLineTool
id: EncyclopeDIA.cwl
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
- id: in_filter_peak_lists
  doc: '(default: false)'
  type: boolean
  inputBinding:
    prefix: -filterPeaklists
- id: in_frag
  doc: '(default: CID)'
  type: boolean
  inputBinding:
    prefix: -frag
- id: in_f_to_l_units
  doc: '(default: ppm)'
  type: boolean
  inputBinding:
    prefix: -ftolunits
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
