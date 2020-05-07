class: CommandLineTool
id: FeatureFinderMetaboIdent.cwl
inputs:
- id: in
  doc: "*                   Input file: LC-MS raw data (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: id
  doc: "*                   Input file: Metabolite identifications (valid formats:\
    \ 'tsv')"
  type: File
  inputBinding:
    prefix: -id
- id: out
  doc: "*                  Output file: Features (valid formats: 'featureXML')"
  type: File
  inputBinding:
    prefix: -out
- id: lib_out
  doc: "Output file: Assay library (valid formats: 'traML')"
  type: File
  inputBinding:
    prefix: -lib_out
- id: chrom_out
  doc: "Output file: Chromatograms (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -chrom_out
- id: candidates_out
  doc: "Output file: Feature candidates (before filtering and model fitting) (valid\
    \ formats: 'featureXML')"
  type: File
  inputBinding:
    prefix: -candidates_out
- id: traf_o_out
  doc: "Output file: Retention times (expected vs. observed) (valid formats: 'trafoXML')"
  type: File
  inputBinding:
    prefix: -trafo_out
- id: extract
  doc: ":mz_window <value>    M/z window size for chromatogram extraction (unit: ppm\
    \ if 1 or greater, else Da/Th) (default: '10.0' min: '0.0')"
  type: boolean
  inputBinding:
    prefix: -extract
- id: extract
  doc: ":n_isotopes <number>  Number of isotopes to include in each assay. (default:\
    \ '2' min: '2')"
  type: boolean
  inputBinding:
    prefix: -extract
- id: extract
  doc: ":rt_window <value>    RT window size (in sec.) for chromatogram extraction.\
    \ If zero, calculated based on 'detect:peak_width'. (default: '0.0' min: '0.0')"
  type: boolean
  inputBinding:
    prefix: -extract
- id: detect
  doc: ":peak_width <value>    Expected elution peak width in seconds, for smoothing\
    \ (Gauss filter). Also determines the RT extration window, unless set explicitly\
    \ via 'extract:rt_window'. (default: '5.0' min: '0.0')"
  type: boolean
  inputBinding:
    prefix: -detect
- id: model
  doc: ":type <choice>          Type of elution model to fit to features (default:\
    \ 'symmetric' valid: 'symmetric', 'asymmetric', 'none')"
  type: boolean
  inputBinding:
    prefix: -model
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
- FeatureFinderMetaboIdent
