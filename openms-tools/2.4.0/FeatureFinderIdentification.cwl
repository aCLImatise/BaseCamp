class: CommandLineTool
id: ../../../FeatureFinderIdentification.cwl
inputs:
- id: in
  doc: "*                        Input file: LC-MS raw data (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: id
  doc: "*                        Input file: Peptide identifications derived directly\
    \ from 'in' (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -id
- id: id_ext
  doc: "Input file: 'External' peptide identifications (e.g. from aligned runs) (valid\
    \ formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -id_ext
- id: out
  doc: "*                       Output file: Features (valid formats: 'featureXML')"
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
- id: model
  doc: ":type <choice>               Type of elution model to fit to features (default:\
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
- FeatureFinderIdentification
