#!/usr/bin/env cwl-runner

baseCommand:
- GNPSExport
class: CommandLineTool
cwlVersion: v1.0
id: gnpsexport
inputs:
- doc: "*                        Input file containing consensus elements with 'peptide'\
    \ annotations (valid formats: 'consensusXML')"
  id: in_cm
  inputBinding:
    prefix: -in_cm
  type: File
- doc: "*                     Original mzml files containing ms/ms spectrum information\
    \ (valid formats: 'mzML')"
  id: in_mzm_l
  inputBinding:
    prefix: -in_mzml
  type: File
- doc: "*                          Output MGF file (valid formats: 'mgf')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Specificity of mgf output information (default: 'full_spectra' valid: 'full_spectra',\
    \ 'merged_spectra')"
  id: output_type
  inputBinding:
    prefix: -output_type
  type: string
- doc: "Tolerance mz window for precursor selection (default: '1.0e-04')"
  id: precursor_mz_tolerance
  inputBinding:
    prefix: -precursor_mz_tolerance
  type: string
- doc: "Tolerance rt window for precursor selection (default: '5.0')"
  id: precursor_rt_tolerance
  inputBinding:
    prefix: -precursor_rt_tolerance
  type: string
- doc: ":cos_similarity <num>  Cosine similarity threshold for merged_spectra output\
    \ (default: '0.95')"
  id: merged_spectra
  inputBinding:
    prefix: -merged_spectra
  type: boolean
- doc: Use the given TOPP INI file
  id: ini
  inputBinding:
    prefix: -ini
  type: File
- doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  id: threads
  inputBinding:
    prefix: -threads
  type: string
- doc: Writes the default configuration file
  id: write_ini
  inputBinding:
    prefix: -write_ini
  type: File
- doc: Shows all options (including advanced)
  id: helphelp
  inputBinding:
    prefix: --helphelp
  type: boolean
