class: CommandLineTool
id: OpenSwathRTNormalizer.cwl
inputs:
- id: in_in
  doc: "*            Input files separated by blank (valid formats: 'mzML')"
  type: string?
  inputBinding:
    prefix: -in
- id: in_tr
  doc: "*             Transition file with the RT peptides ('TraML' or 'csv') (valid\
    \ formats: 'csv', 'traML')"
  type: File?
  inputBinding:
    prefix: -tr
- id: in_out
  doc: "*            Output file (valid formats: 'trafoXML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_rt_norm
  doc: "RT normalization file (how to map the RTs of this run to the ones stored in\
    \ the library) (valid formats: 'trafoXML')"
  type: File?
  inputBinding:
    prefix: -rt_norm
- id: in_min_rsq
  doc: "Minimum r-squared of RT peptides regression (default: '0.95')"
  type: double?
  inputBinding:
    prefix: -min_rsq
- id: in_min_coverage
  doc: "Minimum relative amount of RT peptides to keep (default: '0.6')"
  type: double?
  inputBinding:
    prefix: -min_coverage
- id: in_estimate_best_peptides
  doc: Whether the algorithms should try to choose the best peptides based on their
    peak shape for normalization. Use this option you do not expect all your peptides
    to be detected in a sample and too many 'bad' peptides enter the outlier removal
    step (e.g. due to them being endogenous peptides or using a less curated list
    of peptides).
  type: boolean?
  inputBinding:
    prefix: -estimateBestPeptides
- id: in_ini
  doc: Use the given TOPP INI file
  type: File?
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long?
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File?
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean?
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "*            Output file (valid formats: 'trafoXML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- OpenSwathRTNormalizer
