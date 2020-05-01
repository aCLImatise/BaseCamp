#!/usr/bin/env cwl-runner

baseCommand:
- DecoyDatabase
class: CommandLineTool
cwlVersion: v1.0
id: decoydatabase
inputs:
- doc: "<file(s)>*                   Input FASTA file(s), each containing a database.\
    \ It is recommended to include a contaminant database as well. (valid formats:\
    \ 'fasta')"
  id: in
  inputBinding:
    prefix: -in
  type: boolean
- doc: "*                     Output FASTA file where the decoy database will be written\
    \ to. (valid formats: 'fasta')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "String that is combined with the accession of the protein identifier to indicate\
    \ a decoy protein. (default: 'DECOY_')"
  id: decoy_string
  inputBinding:
    prefix: -decoy_string
  type: string
- doc: "Should the 'decoy_string' be prepended (prefix) or appended (suffix) to the\
    \ protein accession? (default: 'prefix' valid: 'prefix', 'suffix')"
  id: decoy_string_position
  inputBinding:
    prefix: -decoy_string_position
  type: string
- doc: Write only decoy proteins to the output database instead of a combined database.
  id: only_decoy
  inputBinding:
    prefix: -only_decoy
  type: boolean
- doc: "Type of sequence. RNA sequences may contain modification codes, which will\
    \ be handled correctly if this is set to 'RNA'. (default: 'protein' valid: 'protein',\
    \ 'RNA')"
  id: type
  inputBinding:
    prefix: -type
  type: string
- doc: "Method by which decoy sequences are generated from target sequences. Note\
    \ that all sequences are shuffled using the same random seed, ensuring that identical\
    \ sequences produce the same shuffled decoy sequences. Shuffled sequences that\
    \ produce highly similar output sequences are shuffled again (see shuffle_sequence_identity_threshold).\
    \ (default: 'reverse' valid: 'reverse', 'shuffle')"
  id: method
  inputBinding:
    prefix: -method
  type: string
- doc: "Enzyme used for the digestion of the sample. Only applicable if parameter\
    \ 'type' is 'protein'. (default: 'Trypsin' valid: 'proline endopeptidase', 'glutamyl\
    \ endopeptidase',  'Arg-C', 'Arg-C/P', 'Asp-N', 'Alpha-lytic protease', '2-iodobenzoate',\
    \ 'iodosobenzoate', 'staphylococcal protease/D', 'Clostripain/P', 'elastase-trypsin-chymotrypsin',\
    \ 'no cleavage', 'unspecific cleavage', 'Asp-N/B', 'Asp-N_ambic', 'Chymotrypsin',\
    \ 'Chymotrypsin/P', 'CNBr', 'Formic_acid', 'Lys-C', 'Lys-N', 'Lys-C/P', 'PepsinA',\
    \ 'TrypChymo', 'Tryp sin/P', 'V8-DE', 'V8-E', 'leukocyte elastase', 'proline-endopeptidase/HKR',\
    \ 'Glu-C+P', 'PepsinA + P', 'cyanogen-bromide', 'Trypsin')"
  id: enzyme
  inputBinding:
    prefix: -enzyme
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
- doc: Decoy parameters section
  id: decoy
  inputBinding:
    prefix: '- Decoy'
  type: boolean
- doc: ://www.openms.de/documentation/UTILS_DecoyDatabase.html
  id: http
  inputBinding:
    prefix: '- http'
  type: boolean
