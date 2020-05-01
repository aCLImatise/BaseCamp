#!/usr/bin/env cwl-runner

baseCommand:
- DigestorMotif
class: CommandLineTool
cwlVersion: v1.0
id: digestormotif
inputs:
- doc: "*                 FASTA input file (valid formats: 'fasta')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                Output file (peptides) (valid formats: 'idXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "The number of allowed missed cleavages (default: '1' min: '0')"
  id: missed_cleavages
  inputBinding:
    prefix: -missed_cleavages
  type: string
- doc: "Give your mass accuracy in ppb (default: '1000')"
  id: mass_accuracy
  inputBinding:
    prefix: -mass_accuracy
  type: string
- doc: "Minimum length of peptide (default: '6')"
  id: min_length
  inputBinding:
    prefix: -min_length
  type: string
- doc: "Indicate 1 (peptide table only), 2 (statistics only) or (both peptide table\
    \ + statistics) (default: '1')"
  id: out_option
  inputBinding:
    prefix: -out_option
  type: string
- doc: "The enzyme used for peptide digestion. (default: 'Trypsin' valid: 'Arg-C',\
    \ 'Arg-C/P', 'Asp-N', 'proline endopeptidase', 'glutamyl endopeptidase', 'proline-endopeptidase/HKR',\
    \ 'Glu- C+P', 'PepsinA + P', 'cyanogen-bromide', 'Clostripain/P', 'Asp-N/B', 'Asp-N_ambic',\
    \ 'Chymotrypsin', 'Chymotrypsin/P', 'CNBr', 'Formic_acid', 'Lys-C', 'Lys-N', 'Lys-C/P',\
    \ 'PepsinA', 'TrypChymo', 'Trypsin/P', 'V8-DE', 'V8-E', 'leukocyte elastase',\
    \ 'elastase-trypsin-chymotrypsin', 'no cleavage', 'unspecific cleavage', 'Alpha-lytic\
    \ protease', '2-iodobenzoate', 'iodosobenzoate', 'staphylococcal protease/D',\
    \ 'Trypsin')"
  id: enzyme
  inputBinding:
    prefix: -enzyme
  type: string
- doc: "The motif for the restricted peptidome (default: 'M')"
  id: motif
  inputBinding:
    prefix: -motif
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
