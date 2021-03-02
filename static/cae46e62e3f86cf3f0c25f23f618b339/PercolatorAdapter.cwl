class: CommandLineTool
id: PercolatorAdapter.cwl
inputs:
- id: in_in
  doc: "Input file(s) (valid formats: 'mzid', 'idXML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_in_decoy
  doc: "Input decoy file(s) in case of separate searches (valid formats: 'mzid', 'idXML')"
  type: File?
  inputBinding:
    prefix: -in_decoy
- id: in_in_osw
  doc: "Input file in OSW format (valid formats: 'OSW')"
  type: File?
  inputBinding:
    prefix: -in_osw
- id: in_out
  doc: "*                          Output file (valid formats: 'mzid', 'idXML', 'osw')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_out_type
  doc: "Output file type -- default: determined from file extension or content. (valid:\
    \ 'mzid', 'idXML', 'osw')"
  type: File?
  inputBinding:
    prefix: -out_type
- id: in_enzyme
  doc: "Type of enzyme: no_enzyme,elastase,pepsin,proteinasek,thermolysin,chymotrypsin,lys-n,lys-c,arg-c,asp-n,glu-c,trypsin,trypsinp\
    \ (default: 'trypsin' valid: 'no_enzyme', 'elastase', 'pepsin', 'proteinasek',\
    \ 'thermolysin', 'chymotrypsin', 'lys-n', 'lys-c', 'arg-c', 'asp-n', 'glu-c',\
    \ 'trypsin', 'trypsinp')"
  type: string?
  inputBinding:
    prefix: -enzyme
- id: in_percolator_executable
  doc: '*  The Percolator executable. Provide a full or relative path, or make sure
    it can be found in your PATH environment.'
  type: File?
  inputBinding:
    prefix: -percolator_executable
- id: in_peptide_level_f_drs
  doc: Calculate peptide-level FDRs instead of PSM-level FDRs.
  type: boolean?
  inputBinding:
    prefix: -peptide-level-fdrs
- id: in_protein_level_f_drs
  doc: Use the picked protein-level FDR to infer protein probabilities. Use the -fasta
    option and -decoy-pattern to set the Fasta file and decoy pattern.
  type: boolean?
  inputBinding:
    prefix: -protein-level-fdrs
- id: in_osw_level
  doc: "OSW: Either \"ms1\", \"ms2\" or \"transition\"; the data level selected for\
    \ scoring. (default: 'ms2')"
  type: long?
  inputBinding:
    prefix: -osw_level
- id: in_score_type
  doc: "Type of the peptide main score (default: 'q-value' valid: 'q-value', 'pep',\
    \ 'svm')"
  type: string?
  inputBinding:
    prefix: -score_type
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
  doc: "*                          Output file (valid formats: 'mzid', 'idXML', 'osw')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_out_type
  doc: "Output file type -- default: determined from file extension or content. (valid:\
    \ 'mzid', 'idXML', 'osw')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_type)
hints: []
cwlVersion: v1.1
baseCommand:
- PercolatorAdapter
