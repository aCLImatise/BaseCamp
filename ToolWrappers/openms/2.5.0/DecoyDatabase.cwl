class: CommandLineTool
id: DecoyDatabase.cwl
inputs:
- id: in_in
  doc: "<file(s)>*                   Input FASTA file(s), each containing a database.\
    \ It is recommended to include a contaminant database as well. (valid formats:\
    \ 'fasta')"
  type: boolean?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*                     Output FASTA file where the decoy database will be written\
    \ to. (valid formats: 'fasta')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_decoy_string
  doc: "String that is combined with the accession of the protein identifier to indicate\
    \ a decoy protein. (default: 'DECOY_')"
  type: string?
  inputBinding:
    prefix: -decoy_string
- id: in_decoy_string_position
  doc: "Should the 'decoy_string' be prepended (prefix) or appended (suffix) to the\
    \ protein accession? (default: 'prefix' valid: 'prefix', 'suffix')"
  type: string?
  inputBinding:
    prefix: -decoy_string_position
- id: in_only_decoy
  doc: Write only decoy proteins to the output database instead of a combined database.
  type: boolean?
  inputBinding:
    prefix: -only_decoy
- id: in_type
  doc: "Type of sequence. RNA sequences may contain modification codes, which will\
    \ be handled correctly if this is set to 'RNA'. (default: 'protein' valid: 'protein',\
    \ 'RNA')"
  type: string?
  inputBinding:
    prefix: -type
- id: in_method
  doc: "Method by which decoy sequences are generated from target sequences. Note\
    \ that all sequences are shuffled using the same random seed, ensuring that identical\
    \ sequences produce the same shuffled decoy sequences. Shuffled sequences that\
    \ produce highly similar output sequences are shuffled again (see shuffle_sequence_identity_threshold).\
    \ (default: 'reverse' valid: 'reverse', 'shuffle')"
  type: string?
  inputBinding:
    prefix: -method
- id: in_enzyme
  doc: "Enzyme used for the digestion of the sample. Only applicable if parameter\
    \ 'type' is 'protein'. (default: 'Trypsin' valid: '2-iodobenzoate', 'iodosobenzoate',\
    \ 'Formic_acid', 'Lys-C', 'Chymotrypsin/P', 'CNBr', 'Asp-N_ambic', 'Chymotrypsin',\
    \ 'Lys-C/P', 'PepsinA', 'cyanogen-bromide', 'Clostripain/P', 'elastase-trypsin-chymotrypsin',\
    \ 'no cleavage', 'unspecific cleavage', 'TrypChymo', 'Trypsin/P', 'Arg-C', 'Arg-C/P',\
    \ 'V8-DE', 'V8-E', 'leukocyte elastase', 'proline endopeptidase', 'glutamyl endopeptidase',\
    \ 'Alpha-lytic protease', 'Asp-N', 'Asp-N/B', 'staphylococcal protease/D', 'proline-endopeptidase/HKR',\
    \ 'Glu-C+P', 'PepsinA + P', 'Trypsin', 'Lys-N')"
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
  doc: "*                     Output FASTA file where the decoy database will be written\
    \ to. (valid formats: 'fasta')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- DecoyDatabase
