class: CommandLineTool
id: Digestor.cwl
inputs:
- id: in_in
  doc: "*                  Input file (valid formats: 'fasta')"
  type: File
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*                 Output file (peptides) (valid formats: 'idXML', 'fasta')"
  type: File
  inputBinding:
    prefix: -out
- id: in_out_type
  doc: "Set this if you cannot control the filename of 'out', e.g., in TOPPAS. (valid:\
    \ 'idXML', 'fasta')"
  type: File
  inputBinding:
    prefix: -out_type
- id: in_missed_cleavages
  doc: "The number of allowed missed cleavages (default: '1' min: '0')"
  type: long
  inputBinding:
    prefix: -missed_cleavages
- id: in_min_length
  doc: "Minimum length of peptide (default: '6')"
  type: long
  inputBinding:
    prefix: -min_length
- id: in_max_length
  doc: "Maximum length of peptide (default: '40')"
  type: long
  inputBinding:
    prefix: -max_length
- id: in_enzyme
  doc: "The type of digestion enzyme (default: 'Trypsin' valid: 'Glu-C+P', 'PepsinA\
    \ + P', 'no cleavage', 'unspecific cleavage', 'Formic_acid', 'Lys-C', 'Chymotrypsin/P',\
    \ 'CNBr', 'Asp-N', 'Asp-N/B', 'PepsinA', 'Trypsin/P', 'V8-DE', 'Arg-C', 'Arg-C/P',\
    \ 'cyanogen-bromide', 'Clostripain/P', 'elastase-trypsin-chymotrypsin', 'V8-E',\
    \ 'leukocyte elastase', 'proline endopeptidase', 'glutamyl endopeptidase', 'Alpha-lytic\
    \ protease', '2-iodobenzoate', 'iodosobenzoate', 'staphylococcal protease/D',\
    \ 'proline-endopeptidase/HKR', 'Lys-N', 'Lys-C/P', 'Trypsin', 'Asp-N_ambic', 'Chymotrypsin',\
    \ 'TrypChymo')"
  type: long
  inputBinding:
    prefix: -enzyme
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
  doc: "*                 Output file (peptides) (valid formats: 'idXML', 'fasta')"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
- id: out_out_type
  doc: "Set this if you cannot control the filename of 'out', e.g., in TOPPAS. (valid:\
    \ 'idXML', 'fasta')"
  type: File
  outputBinding:
    glob: $(inputs.in_out_type)
cwlVersion: v1.1
baseCommand:
- Digestor
