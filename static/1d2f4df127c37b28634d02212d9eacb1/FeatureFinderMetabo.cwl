class: CommandLineTool
id: FeatureFinderMetabo.cwl
inputs:
- id: in_in
  doc: "*        Centroided mzML file (valid formats: 'mzML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*       FeatureXML file with metabolite features (valid formats: 'featureXML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_out_chrom
  doc: "Optional mzML file with chromatograms (valid formats: 'mzML')"
  type: File?
  inputBinding:
    prefix: -out_chrom
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
hints: []
cwlVersion: v1.1
baseCommand:
- FeatureFinderMetabo
