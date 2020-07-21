class: CommandLineTool
id: ../../../XPressPeptideParser.cwl
inputs:
- id: num_change_default
  doc: <num>    change XPRESS mass tolerance (default=0.5000)
  type: boolean
  inputBinding:
    prefix: -m
- id: tolerance_specified_m
  doc: tolerance specified by -m is in ppm (default=Daltons)
  type: boolean
  inputBinding:
    prefix: -a
- id: strnum_when_specifying
  doc: <str>,<num>   when specifying multiple isotopic labels, use this option e.g.
    -nK,6.0 -nR,10.0 also use 'n' for labeled n-terminus and 'c' for c-terminus default
    residue 'C' and mass '9.0000'
  type: boolean
  inputBinding:
    prefix: -n
- id: heavy_labeled_peptide
  doc: heavy labeled peptide elutes before light labeled partner
  type: boolean
  inputBinding:
    prefix: -b
- id: num_fix_start
  doc: <num>    fix elution peak as +-<num> scans from start scan, default=5
  type: boolean
  inputBinding:
    prefix: -f
- id: num_fix_identified
  doc: <num>    fix elution peak as +-<num> scans from identified peak apex, default=5
  type: boolean
  inputBinding:
    prefix: -F
- id: ratio_setfix_light
  doc: for ratio, set/fix light to 1, vary heavy
  type: boolean
  inputBinding:
    prefix: -L
- id: ratio_setfix_heavy
  doc: for ratio, set/fix heavy to 1, vary light
  type: boolean
  inputBinding:
    prefix: -H
- id: n_metabolic_labeling
  doc: for 15N metabolic labeling; ignore all other parameters, assume IDs are normal
    and quantify w/corresponding 15N heavy pair
  type: boolean
  inputBinding:
    prefix: -M
- id: nmetabolic_labeling_ignore
  doc: for 15Nmetabolic labeling; ignore all other parameters, assume IDs are 15N
    heavy and quantify w/corresponding 14N light pair
  type: boolean
  inputBinding:
    prefix: -N
- id: c_metabolic_normal
  doc: for 13C metabolic labeling; ignore all other parameters, assume IDs are normal
    and quantify w/corresponding 13C heavy pair
  type: boolean
  inputBinding:
    prefix: -O
- id: c_metabolic_c
  doc: for 13C metabolic labeling; ignore all other parameters, assume IDs are 13C
    heavy and quantify w/corresponding 12C light pair
  type: boolean
  inputBinding:
    prefix: -P
- id: charge_range_extract
  doc: <num>-<num>   charge range to extract labelfree chromatograms, valid only for
    label free mode
  type: boolean
  inputBinding:
    prefix: -C
- id: num_minimum_number
  doc: <num>    minimum number of chromatogram points needed for quantitation (default=5)
  type: boolean
  inputBinding:
    prefix: -c
- id: num_number_add
  doc: <num>    number of 13C isotopic peaks to add to precursor chromatogram (default=0)
  type: boolean
  inputBinding:
    prefix: -p
- id: num_where_num
  doc: <num>    where <num> is minimum probability needed to quantify a peptide (default=0.5000)
  type: boolean
  inputBinding:
    prefix: -q
- id: also_export_intensities
  doc: also export intensities and intensity based ratio
  type: boolean
  inputBinding:
    prefix: -i
- id: label_free_stats
  doc: 'label free mode: stats on precursor ions only, no ratios only relevant label-free
    parameters are -m, -c, -C, and -p'
  type: boolean
  inputBinding:
    prefix: -l
- id: path_path_mzxml
  doc: <path>   path to mzXML file(s), if not in pepXML directory
  type: boolean
  inputBinding:
    prefix: -d
- id: force_reported_endpoints
  doc: force reported endpoints to correspond to MS1 scans
  type: boolean
  inputBinding:
    prefix: -E
- id: xml_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- XPressPeptideParser
