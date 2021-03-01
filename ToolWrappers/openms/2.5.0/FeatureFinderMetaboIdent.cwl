class: CommandLineTool
id: FeatureFinderMetaboIdent.cwl
inputs:
- id: in_in
  doc: "*                   Input file: LC-MS raw data (valid formats: 'mzML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_id
  doc: "*                   Input file: Metabolite identifications (valid formats:\
    \ 'tsv')"
  type: File?
  inputBinding:
    prefix: -id
- id: in_out
  doc: "*                  Output file: Features (valid formats: 'featureXML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_lib_out
  doc: "Output file: Assay library (valid formats: 'traML')"
  type: File?
  inputBinding:
    prefix: -lib_out
- id: in_chrom_out
  doc: "Output file: Chromatograms (valid formats: 'mzML')"
  type: File?
  inputBinding:
    prefix: -chrom_out
- id: in_candidates_out
  doc: "Output file: Feature candidates (before filtering and model fitting) (valid\
    \ formats: 'featureXML')"
  type: File?
  inputBinding:
    prefix: -candidates_out
- id: in_traf_o_out
  doc: "Output file: Retention times (expected vs. observed) (valid formats: 'trafoXML')"
  type: File?
  inputBinding:
    prefix: -trafo_out
- id: in_detect
  doc: ":peak_width <value>    Expected elution peak width in seconds, for smoothing\
    \ (Gauss filter). Also determines the RT extration window, unless set explicitly\
    \ via 'extract:rt_window'. (default: '5.0' min: '0.0')"
  type: boolean?
  inputBinding:
    prefix: -detect
- id: in_model
  doc: ":type <choice>          Type of elution model to fit to features (default:\
    \ 'symmetric' valid: 'symmetric', 'asymmetric', 'none')"
  type: boolean?
  inputBinding:
    prefix: -model
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
  doc: "*                  Output file: Features (valid formats: 'featureXML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_lib_out
  doc: "Output file: Assay library (valid formats: 'traML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_lib_out)
- id: out_chrom_out
  doc: "Output file: Chromatograms (valid formats: 'mzML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_chrom_out)
- id: out_candidates_out
  doc: "Output file: Feature candidates (before filtering and model fitting) (valid\
    \ formats: 'featureXML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_candidates_out)
- id: out_traf_o_out
  doc: "Output file: Retention times (expected vs. observed) (valid formats: 'trafoXML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_traf_o_out)
hints: []
cwlVersion: v1.1
baseCommand:
- FeatureFinderMetaboIdent
