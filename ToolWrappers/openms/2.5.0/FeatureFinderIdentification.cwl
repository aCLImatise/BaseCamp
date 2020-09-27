class: CommandLineTool
id: FeatureFinderIdentification.cwl
inputs:
- id: in_in
  doc: "*                        Input file: LC-MS raw data (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: in_id
  doc: "*                        Input file: Peptide identifications derived directly\
    \ from 'in' (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -id
- id: in_id_ext
  doc: "Input file: 'External' peptide identifications (e.g. from aligned runs) (valid\
    \ formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -id_ext
- id: in_out
  doc: "*                       Output file: Features (valid formats: 'featureXML')"
  type: File
  inputBinding:
    prefix: -out
- id: in_lib_out
  doc: "Output file: Assay library (valid formats: 'traML')"
  type: File
  inputBinding:
    prefix: -lib_out
- id: in_chrom_out
  doc: "Output file: Chromatograms (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -chrom_out
- id: in_candidates_out
  doc: "Output file: Feature candidates (before filtering and model fitting) (valid\
    \ formats: 'featureXML')"
  type: File
  inputBinding:
    prefix: -candidates_out
- id: in_model
  doc: ":type <choice>               Type of elution model to fit to features (default:\
    \ 'symmetric' valid: 'symmetric', 'asymmetric', 'none')"
  type: boolean
  inputBinding:
    prefix: -model
- id: in_ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "*                       Output file: Features (valid formats: 'featureXML')"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
- id: out_lib_out
  doc: "Output file: Assay library (valid formats: 'traML')"
  type: File
  outputBinding:
    glob: $(inputs.in_lib_out)
- id: out_chrom_out
  doc: "Output file: Chromatograms (valid formats: 'mzML')"
  type: File
  outputBinding:
    glob: $(inputs.in_chrom_out)
- id: out_candidates_out
  doc: "Output file: Feature candidates (before filtering and model fitting) (valid\
    \ formats: 'featureXML')"
  type: File
  outputBinding:
    glob: $(inputs.in_candidates_out)
cwlVersion: v1.1
baseCommand:
- FeatureFinderIdentification
