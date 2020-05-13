class: CommandLineTool
id: PercolatorAdapter.cwl
inputs:
- id: in
  doc: "Input file(s) (valid formats: 'mzid', 'idXML')"
  type: File
  inputBinding:
    prefix: -in
- id: in_decoy
  doc: "Input decoy file(s) in case of separate searches (valid formats: 'mzid', 'idXML')"
  type: File
  inputBinding:
    prefix: -in_decoy
- id: in_osw
  doc: "Input file in OSW format (valid formats: 'OSW')"
  type: File
  inputBinding:
    prefix: -in_osw
- id: out
  doc: "*                          Output file (valid formats: 'mzid', 'idXML', 'osw')"
  type: File
  inputBinding:
    prefix: -out
- id: out_type
  doc: "Output file type -- default: determined from file extension or content. (valid:\
    \ 'mzid', 'idXML', 'osw')"
  type: string
  inputBinding:
    prefix: -out_type
- id: enzyme
  doc: "Type of enzyme: no_enzyme,elastase,pepsin,proteinasek,thermolysin,chymotrypsin,lys-n,lys-c,arg-c,asp-n,glu-c,trypsin\
    \ (default: 'trypsin' valid: 'no_enzyme', 'elastase',  'pepsin', 'proteinasek',\
    \ 'thermolysin', 'chymotrypsin', 'lys-n', 'lys-c', 'arg-c', 'asp-n', 'glu-c',\
    \ 'trypsin')"
  type: string
  inputBinding:
    prefix: -enzyme
- id: percolator_executable
  doc: "*  Percolator executable of the installation e.g. 'percolator.exe'"
  type: string
  inputBinding:
    prefix: -percolator_executable
- id: peptide_level_f_drs
  doc: Calculate peptide-level FDRs instead of PSM-level FDRs.
  type: boolean
  inputBinding:
    prefix: -peptide-level-fdrs
- id: protein_level_f_drs
  doc: Use the picked protein-level FDR to infer protein probabilities. Use the -fasta
    option and -decoy-pattern to set the Fasta file and decoy pattern.
  type: boolean
  inputBinding:
    prefix: -protein-level-fdrs
- id: osw_level
  doc: "OSW: Either \"ms1\", \"ms2\" or \"transition\"; the data level selected for\
    \ scoring. (default: 'ms2')"
  type: string
  inputBinding:
    prefix: -osw_level
- id: score_type
  doc: "Type of the peptide main score (default: 'q-value' valid: 'q-value', 'pep',\
    \ 'svm')"
  type: string
  inputBinding:
    prefix: -score_type
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
- PercolatorAdapter
