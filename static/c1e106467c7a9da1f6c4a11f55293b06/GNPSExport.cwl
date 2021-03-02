class: CommandLineTool
id: GNPSExport.cwl
inputs:
- id: in_in_cm
  doc: "*                        Input file containing consensus elements with 'peptide'\
    \ annotations (valid formats: 'consensusXML')"
  type: File?
  inputBinding:
    prefix: -in_cm
- id: in_in_mzm_l
  doc: "*                     Original mzml files containing ms/ms spectrum information\
    \ (valid formats: 'mzML')"
  type: string?
  inputBinding:
    prefix: -in_mzml
- id: in_out
  doc: "*                          Output MGF file (valid formats: 'mgf')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_output_type
  doc: "Specificity of mgf output information (default: 'full_spectra' valid: 'full_spectra',\
    \ 'merged_spectra')"
  type: string?
  inputBinding:
    prefix: -output_type
- id: in_precursor_mz_tolerance
  doc: "Tolerance mz window for precursor selection (default: '1.0e-04')"
  type: long?
  inputBinding:
    prefix: -precursor_mz_tolerance
- id: in_precursor_rt_tolerance
  doc: "Tolerance rt window for precursor selection (default: '5.0')"
  type: long?
  inputBinding:
    prefix: -precursor_rt_tolerance
- id: in_merged_spectra
  doc: ":cos_similarity <num>  Cosine similarity threshold for merged_spectra output\
    \ (default: '0.95')"
  type: boolean?
  inputBinding:
    prefix: -merged_spectra
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
  doc: "*                          Output MGF file (valid formats: 'mgf')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- GNPSExport
