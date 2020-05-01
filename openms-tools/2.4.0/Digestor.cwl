#!/usr/bin/env cwl-runner

baseCommand:
- Digestor
class: CommandLineTool
cwlVersion: v1.0
id: digestor
inputs:
- doc: "*                  Input file (valid formats: 'fasta')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                 Output file (peptides) (valid formats: 'idXML', 'fasta')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Set this if you cannot control the filename of 'out', e.g., in TOPPAS. (valid:\
    \ 'idXML', 'fasta')"
  id: out_type
  inputBinding:
    prefix: -out_type
  type: string
- doc: "The number of allowed missed cleavages (default: '1' min: '0')"
  id: missed_cleavages
  inputBinding:
    prefix: -missed_cleavages
  type: string
- doc: "Minimum length of peptide (default: '6')"
  id: min_length
  inputBinding:
    prefix: -min_length
  type: string
- doc: "Maximum length of peptide (default: '40')"
  id: max_length
  inputBinding:
    prefix: -max_length
  type: string
- doc: "The type of digestion enzyme (default: 'Trypsin' valid: 'Arg-C', 'V8-E', 'staphylococcal\
    \ protease/D', 'V8-DE', 'Chymotrypsin', 'Asp-N_ambic', 'Formic_acid', 'TrypChymo',\
    \ 'Trypsin/ P', 'Lys-C/P', 'leukocyte elastase', 'Lys-N', 'Asp-N', 'proline-endopeptidase/HKR',\
    \ 'Glu-C+P', 'Trypsin', 'Asp-N/B', 'unspecific cleavage', 'Alpha-lytic protease',\
    \ '2-iodobenzoate ', 'iodosobenzoate', 'CNBr', 'glutamyl endopeptidase', 'PepsinA',\
    \ 'proline endopeptidase', 'Chymotrypsin/P', 'PepsinA + P', 'cyanogen-bromide',\
    \ 'Clostripain/P', 'elastase-trypsin- chymotrypsin', 'no cleavage', 'Arg-C/P',\
    \ 'Lys-C')"
  id: enzyme
  inputBinding:
    prefix: -enzyme
  type: string
- doc: ":ID <option>           Identifier to use for each peptide: copy from parent\
    \ protein (parent); a consecutive number (number); parent ID + consecutive number\
    \ (both) (default: 'parent' valid: 'parent',  'number', 'both')"
  id: fast_a
  inputBinding:
    prefix: -FASTA
  type: boolean
- doc: ":description <option>  Keep or remove the (possibly lengthy) FASTA header\
    \ description. Keeping it can increase resulting FASTA file significantly. (default:\
    \ 'remove' valid: 'remove', 'keep')"
  id: fast_a
  inputBinding:
    prefix: -FASTA
  type: boolean
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
