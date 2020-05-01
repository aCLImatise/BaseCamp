#!/usr/bin/env cwl-runner

baseCommand:
- OpenSwathRTNormalizer
class: CommandLineTool
cwlVersion: v1.0
id: openswathrtnormalizer
inputs:
- doc: "*            Input files separated by blank (valid formats: 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*             Transition file with the RT peptides ('TraML' or 'csv') (valid\
    \ formats: 'csv', 'traML')"
  id: tr
  inputBinding:
    prefix: -tr
  type: File
- doc: "*            Output file (valid formats: 'trafoXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "RT normalization file (how to map the RTs of this run to the ones stored in\
    \ the library) (valid formats: 'trafoXML')"
  id: rt_norm
  inputBinding:
    prefix: -rt_norm
  type: File
- doc: "Minimum r-squared of RT peptides regression (default: '0.95')"
  id: min_rsq
  inputBinding:
    prefix: -min_rsq
  type: string
- doc: "Minimum relative amount of RT peptides to keep (default: '0.6')"
  id: min_coverage
  inputBinding:
    prefix: -min_coverage
  type: string
- doc: Whether the algorithms should try to choose the best peptides based on their
    peak shape for normalization. Use this option you do not expect all your peptides
    to be detected in a sampl e and too many 'bad' peptides enter the outlier removal
    step (e.g. due to them being endogenous peptides or using a less curated list
    of peptides).
  id: estimate_best_peptides
  inputBinding:
    prefix: -estimateBestPeptides
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
- doc: Parameters for the RTNormalization. RT normalization and outlier detection
    can be done iteratively (by default) which removes one outlier per iteration or
    using the RANSAC algorithm.
  id: rt_normalization
  inputBinding:
    prefix: '- RTNormalization'
  type: boolean
- doc: Algorithm parameters section
  id: algorithm
  inputBinding:
    prefix: '- algorithm'
  type: boolean
- doc: Parameters for the peptide estimation (use -estimateBestPeptides to enable).
  id: peptide_estimation
  inputBinding:
    prefix: '- peptideEstimation'
  type: boolean
