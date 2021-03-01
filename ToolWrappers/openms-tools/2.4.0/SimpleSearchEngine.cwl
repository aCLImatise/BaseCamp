class: CommandLineTool
id: SimpleSearchEngine.cwl
inputs:
- id: in_in
  doc: "*                                    Input file  (valid formats: 'mzML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_database
  doc: "*                              Input file  (valid formats: 'fasta')"
  type: File?
  inputBinding:
    prefix: -database
- id: in_out
  doc: "*                                   Output file  (valid formats: 'idXML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_enzyme
  doc: "The enzyme used for peptide digestion. (default: 'Trypsin' valid: 'Arg-C/P',\
    \ 'Trypsin', 'Lys-C/P', 'PepsinA', 'Arg-C', 'PepsinA + P', 'cyanogen-bromide',\
    \ 'Clostripain/P', 'unspecific cleavage', 'Asp-N', 'Asp-N/B', 'Trypsin/P', 'V8-DE',\
    \ 'Lys-C', 'Lys-N', 'CNBr', 'Formic_acid', 'Chymotrypsin', 'Chymotrypsin/P', 'no\
    \ cleavage', 'TrypChymo', 'V8-E', 'leukocyte elastase', 'proline endopeptidase',\
    \ 'Asp-N_ambic', 'proline-endopeptidase/HKR', 'Glu-C+P', '2-iodobenzoate', 'iodosobenzoate',\
    \ 'staphylococcal protease/D', 'glutamyl endopeptidase', 'Alpha-lytic protease',\
    \ 'elastase-trypsin-chymotrypsin')"
  type: long?
  inputBinding:
    prefix: -enzyme
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
  doc: "*                                   Output file  (valid formats: 'idXML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- SimpleSearchEngine
