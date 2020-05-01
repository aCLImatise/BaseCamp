#!/usr/bin/env cwl-runner

baseCommand:
- PercolatorAdapter
class: CommandLineTool
cwlVersion: v1.0
id: percolatoradapter
inputs:
- doc: "Input file(s) (valid formats: 'mzid', 'idXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Input decoy file(s) in case of separate searches (valid formats: 'mzid', 'idXML')"
  id: in_decoy
  inputBinding:
    prefix: -in_decoy
  type: File
- doc: "Input file in OSW format (valid formats: 'OSW')"
  id: in_osw
  inputBinding:
    prefix: -in_osw
  type: File
- doc: "*                          Output file (valid formats: 'mzid', 'idXML', 'osw')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Output file type -- default: determined from file extension or content. (valid:\
    \ 'mzid', 'idXML', 'osw')"
  id: out_type
  inputBinding:
    prefix: -out_type
  type: string
- doc: "Type of enzyme: no_enzyme,elastase,pepsin,proteinasek,thermolysin,chymotrypsin,lys-n,lys-c,arg-c,asp-n,glu-c,trypsin\
    \ (default: 'trypsin' valid: 'no_enzyme', 'elastase',  'pepsin', 'proteinasek',\
    \ 'thermolysin', 'chymotrypsin', 'lys-n', 'lys-c', 'arg-c', 'asp-n', 'glu-c',\
    \ 'trypsin')"
  id: enzyme
  inputBinding:
    prefix: -enzyme
  type: string
- doc: "*  Percolator executable of the installation e.g. 'percolator.exe'"
  id: percolator_executable
  inputBinding:
    prefix: -percolator_executable
  type: string
- doc: Calculate peptide-level FDRs instead of PSM-level FDRs.
  id: peptide_level_f_drs
  inputBinding:
    prefix: -peptide-level-fdrs
  type: boolean
- doc: Use the picked protein-level FDR to infer protein probabilities. Use the -fasta
    option and -decoy-pattern to set the Fasta file and decoy pattern.
  id: protein_level_f_drs
  inputBinding:
    prefix: -protein-level-fdrs
  type: boolean
- doc: "OSW: Either \"ms1\", \"ms2\" or \"transition\"; the data level selected for\
    \ scoring. (default: 'ms2')"
  id: osw_level
  inputBinding:
    prefix: -osw_level
  type: string
- doc: "Type of the peptide main score (default: 'q-value' valid: 'q-value', 'pep',\
    \ 'svm')"
  id: score_type
  inputBinding:
    prefix: -score_type
  type: string
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
