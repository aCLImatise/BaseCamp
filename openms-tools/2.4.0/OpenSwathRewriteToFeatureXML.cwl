class: CommandLineTool
id: OpenSwathRewriteToFeatureXML.cwl
inputs:
- id: csv
  doc: "MProphet tsv output file: \"all_peakgroups.xls\" (valid formats: 'csv')"
  type: File
  inputBinding:
    prefix: -csv
- id: feature_xml
  doc: "*   Input featureXML file (valid formats: 'featureXML')"
  type: File
  inputBinding:
    prefix: -featureXML
- id: out
  doc: "*          Output featureXML file (valid formats: 'featureXML')"
  type: File
  inputBinding:
    prefix: -out
- id: fdr_cut_off
  doc: "FDR cutoff (e.g. to remove all features with a an m_score above 0.05 use 0.05\
    \ here) (default: '-1')"
  type: string
  inputBinding:
    prefix: -FDR_cutoff
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
outputs: []
cwlVersion: v1.1
baseCommand:
- OpenSwathRewriteToFeatureXML
