class: CommandLineTool
id: GNPSExport.cwl
inputs:
- id: in_cm
  doc: "*                        Input file containing consensus elements with 'peptide'\
    \ annotations (valid formats: 'consensusXML')"
  type: File
  inputBinding:
    prefix: -in_cm
- id: in_mzm_l
  doc: "*                     Original mzml files containing ms/ms spectrum information\
    \ (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in_mzml
- id: out
  doc: "*                          Output MGF file (valid formats: 'mgf')"
  type: File
  inputBinding:
    prefix: -out
- id: output_type
  doc: "Specificity of mgf output information (default: 'full_spectra' valid: 'full_spectra',\
    \ 'merged_spectra')"
  type: string
  inputBinding:
    prefix: -output_type
- id: precursor_mz_tolerance
  doc: "Tolerance mz window for precursor selection (default: '1.0e-04')"
  type: string
  inputBinding:
    prefix: -precursor_mz_tolerance
- id: precursor_rt_tolerance
  doc: "Tolerance rt window for precursor selection (default: '5.0')"
  type: string
  inputBinding:
    prefix: -precursor_rt_tolerance
- id: merged_spectra
  doc: ":cos_similarity <num>  Cosine similarity threshold for merged_spectra output\
    \ (default: '0.95')"
  type: boolean
  inputBinding:
    prefix: -merged_spectra
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
- GNPSExport
