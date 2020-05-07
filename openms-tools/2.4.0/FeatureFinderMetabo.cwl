class: CommandLineTool
id: FeatureFinderMetabo.cwl
inputs:
- id: in
  doc: "*        Centroided mzML file (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*       FeatureXML file with metabolite features (valid formats: 'featureXML')"
  type: File
  inputBinding:
    prefix: -out
- id: out_chrom
  doc: "Optional mzML file with chromatograms (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -out_chrom
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
- id: algorithm
  doc: Algorithm parameters section
  type: boolean
  inputBinding:
    prefix: '- algorithm'
outputs: []
cwlVersion: v1.1
baseCommand:
- FeatureFinderMetabo
