class: CommandLineTool
id: OpenSwathRTNormalizer.cwl
inputs:
- id: in
  doc: "*            Input files separated by blank (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: tr
  doc: "*             Transition file with the RT peptides ('TraML' or 'csv') (valid\
    \ formats: 'csv', 'traML')"
  type: File
  inputBinding:
    prefix: -tr
- id: out
  doc: "*            Output file (valid formats: 'trafoXML')"
  type: File
  inputBinding:
    prefix: -out
- id: rt_norm
  doc: "RT normalization file (how to map the RTs of this run to the ones stored in\
    \ the library) (valid formats: 'trafoXML')"
  type: File
  inputBinding:
    prefix: -rt_norm
- id: min_rsq
  doc: "Minimum r-squared of RT peptides regression (default: '0.95')"
  type: string
  inputBinding:
    prefix: -min_rsq
- id: min_coverage
  doc: "Minimum relative amount of RT peptides to keep (default: '0.6')"
  type: string
  inputBinding:
    prefix: -min_coverage
- id: estimate_best_peptides
  doc: Whether the algorithms should try to choose the best peptides based on their
    peak shape for normalization. Use this option you do not expect all your peptides
    to be detected in a sampl e and too many 'bad' peptides enter the outlier removal
    step (e.g. due to them being endogenous peptides or using a less curated list
    of peptides).
  type: boolean
  inputBinding:
    prefix: -estimateBestPeptides
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
- id: rt_normalization
  doc: Parameters for the RTNormalization. RT normalization and outlier detection
    can be done iteratively (by default) which removes one outlier per iteration or
    using the RANSAC algorithm.
  type: boolean
  inputBinding:
    prefix: '- RTNormalization'
- id: algorithm
  doc: Algorithm parameters section
  type: boolean
  inputBinding:
    prefix: '- algorithm'
- id: peptide_estimation
  doc: Parameters for the peptide estimation (use -estimateBestPeptides to enable).
  type: boolean
  inputBinding:
    prefix: '- peptideEstimation'
outputs: []
cwlVersion: v1.1
baseCommand:
- OpenSwathRTNormalizer
