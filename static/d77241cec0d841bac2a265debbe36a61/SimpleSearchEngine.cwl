class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/SimpleSearchEngine.cwl
inputs:
- id: in
  doc: "*                                    Input file  (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: database
  doc: "*                              Input file  (valid formats: 'fasta')"
  type: File
  inputBinding:
    prefix: -database
- id: out
  doc: "*                                   Output file  (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: enzyme
  doc: "The enzyme used for peptide digestion. (default: 'Trypsin' valid: 'PepsinA',\
    \ 'Lys-N', 'Lys-C/P', 'Lys-C', 'Formic_acid', 'Chymotrypsin/P', 'CNBr', 'Trypsin',\
    \ 'no cleavage', 'unspecific cleavage', 'Trypsin/P', 'V8-DE', 'TrypChymo', 'proline\
    \ endopeptidase', 'Arg-C/P', 'Asp-N', 'Clostripain/P', 'elastase-trypsin-chymotrypsin',\
    \ 'Chymotrypsin', 'Asp-N/B', '2-iodobenzoate', 'iodosobenzoate', 'Arg-C', 'V8-E',\
    \ 'leukocyte elastase', 'glutamyl endopeptidase', 'Alpha-lytic protease', 'Glu-C+P',\
    \ 'PepsinA + P', 'cyanogen-bromide', 'Asp-N_ambic', 'staphylococcal protease/D',\
    \ 'proline-endopeptidase/HKR')"
  type: string
  inputBinding:
    prefix: -enzyme
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
- SimpleSearchEngine
