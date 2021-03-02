class: CommandLineTool
id: OpenSwathRewriteToFeatureXML.cwl
inputs:
- id: in_csv
  doc: "MProphet tsv output file: \"all_peakgroups.xls\" (valid formats: 'csv')"
  type: File?
  inputBinding:
    prefix: -csv
- id: in_feature_xml
  doc: "*   Input featureXML file (valid formats: 'featureXML')"
  type: File?
  inputBinding:
    prefix: -featureXML
- id: in_out
  doc: "*          Output featureXML file (valid formats: 'featureXML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_fdr_cut_off
  doc: "FDR cutoff (e.g. to remove all features with a an m_score above 0.05 use 0.05\
    \ here) (default: '-1.0')"
  type: double?
  inputBinding:
    prefix: -FDR_cutoff
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
- id: out_csv
  doc: "MProphet tsv output file: \"all_peakgroups.xls\" (valid formats: 'csv')"
  type: File?
  outputBinding:
    glob: $(inputs.in_csv)
- id: out_out
  doc: "*          Output featureXML file (valid formats: 'featureXML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- OpenSwathRewriteToFeatureXML
