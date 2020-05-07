class: CommandLineTool
id: Digestor.cwl
inputs:
- id: in
  doc: "*                  Input file (valid formats: 'fasta')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*                 Output file (peptides) (valid formats: 'idXML', 'fasta')"
  type: File
  inputBinding:
    prefix: -out
- id: out_type
  doc: "Set this if you cannot control the filename of 'out', e.g., in TOPPAS. (valid:\
    \ 'idXML', 'fasta')"
  type: string
  inputBinding:
    prefix: -out_type
- id: missed_cleavages
  doc: "The number of allowed missed cleavages (default: '1' min: '0')"
  type: string
  inputBinding:
    prefix: -missed_cleavages
- id: min_length
  doc: "Minimum length of peptide (default: '6')"
  type: string
  inputBinding:
    prefix: -min_length
- id: max_length
  doc: "Maximum length of peptide (default: '40')"
  type: string
  inputBinding:
    prefix: -max_length
- id: enzyme
  doc: "The type of digestion enzyme (default: 'Trypsin' valid: 'Arg-C', 'V8-E', 'staphylococcal\
    \ protease/D', 'V8-DE', 'Chymotrypsin', 'Asp-N_ambic', 'Formic_acid', 'TrypChymo',\
    \ 'Trypsin/ P', 'Lys-C/P', 'leukocyte elastase', 'Lys-N', 'Asp-N', 'proline-endopeptidase/HKR',\
    \ 'Glu-C+P', 'Trypsin', 'Asp-N/B', 'unspecific cleavage', 'Alpha-lytic protease',\
    \ '2-iodobenzoate ', 'iodosobenzoate', 'CNBr', 'glutamyl endopeptidase', 'PepsinA',\
    \ 'proline endopeptidase', 'Chymotrypsin/P', 'PepsinA + P', 'cyanogen-bromide',\
    \ 'Clostripain/P', 'elastase-trypsin- chymotrypsin', 'no cleavage', 'Arg-C/P',\
    \ 'Lys-C')"
  type: string
  inputBinding:
    prefix: -enzyme
- id: fast_a
  doc: ":ID <option>           Identifier to use for each peptide: copy from parent\
    \ protein (parent); a consecutive number (number); parent ID + consecutive number\
    \ (both) (default: 'parent' valid: 'parent',  'number', 'both')"
  type: boolean
  inputBinding:
    prefix: -FASTA
- id: fast_a
  doc: ":description <option>  Keep or remove the (possibly lengthy) FASTA header\
    \ description. Keeping it can increase resulting FASTA file significantly. (default:\
    \ 'remove' valid: 'remove', 'keep')"
  type: boolean
  inputBinding:
    prefix: -FASTA
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
- Digestor
