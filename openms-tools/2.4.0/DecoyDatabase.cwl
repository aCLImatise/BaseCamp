class: CommandLineTool
id: DecoyDatabase.cwl
inputs:
- id: enzyme
  doc: "Enzyme used for the digestion of the sample (default: 'Trypsin' valid: 'TrypChymo',\
    \ 'Lys-C/P', 'PepsinA', 'Lys-N', 'Lys-C', 'CNBr', 'Formic_acid', 'Trypsin', 'PepsinA\
    \ + P', 'cya nogen-bromide', 'Clostripain/P', 'Trypsin/P', 'V8-DE', 'V8-E', 'elastase-trypsin-chymotrypsin',\
    \ 'no cleavage', 'unspecific cleavage', 'leukocyte elastase', 'proline endopeptidas\
    \ e', 'staphylococcal protease/D', 'proline-endopeptidase/HKR', 'Glu-C+P', 'Chymotrypsin/P',\
    \ 'Arg-C', 'glutamyl endopeptidase', 'Alpha-lytic protease', 'Arg-C/P', 'Asp-N',\
    \ 'Asp-N/ B', 'Chymotrypsin', '2-iodobenzoate', 'iodosobenzoate', 'Asp-N_ambic')"
  type: string
  inputBinding:
    prefix: -enzyme
- id: in
  doc: "<file(s)>*                 Input FASTA file(s), each containing a database.\
    \ It is recommended to include a contaminant database as well. (valid formats:\
    \ 'fasta')"
  type: boolean
  inputBinding:
    prefix: -in
- id: out
  doc: "*                   Output FASTA file where the decoy database will be written\
    \ to. (valid formats: 'fasta')"
  type: File
  inputBinding:
    prefix: -out
- id: decoy_string
  doc: "String that is combined with the accession of the protein identifier to indicate\
    \ a decoy protein. (default: 'DECOY_')"
  type: string
  inputBinding:
    prefix: -decoy_string
- id: decoy_string_position
  doc: "Should the 'decoy_string' be prepended (prefix) or appended (suffix) to the\
    \ protein accession? (default: 'prefix' valid: 'prefix', 'suffix')"
  type: string
  inputBinding:
    prefix: -decoy_string_position
- id: only_decoy
  doc: Write only decoy proteins to the output database instead of a combined database.
  type: boolean
  inputBinding:
    prefix: -only_decoy
- id: method
  doc: "Method by which decoy sequences are generated from target sequences. Note\
    \ that all sequences are shuffled using the same random seed, ensuring that identical\
    \ sequences produce  the same shuffled decoy sequences. Shuffled sequences that\
    \ produce highly similar output sequences are shuffled again (see shuffle_sequence_identity_threshold).\
    \ (default: 'rever se' valid: 'reverse', 'shuffle')"
  type: string
  inputBinding:
    prefix: -method
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
- id: decoy
  doc: Decoy parameters section
  type: boolean
  inputBinding:
    prefix: '- Decoy'
outputs: []
cwlVersion: v1.1
baseCommand:
- DecoyDatabase
