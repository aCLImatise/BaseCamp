class: CommandLineTool
id: DigestorMotif.cwl
inputs:
- id: in
  doc: "*                 FASTA input file (valid formats: 'fasta')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*                Output file (peptides) (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: missed_cleavages
  doc: "The number of allowed missed cleavages (default: '1' min: '0')"
  type: string
  inputBinding:
    prefix: -missed_cleavages
- id: mass_accuracy
  doc: "Give your mass accuracy in ppb (default: '1000')"
  type: string
  inputBinding:
    prefix: -mass_accuracy
- id: min_length
  doc: "Minimum length of peptide (default: '6')"
  type: string
  inputBinding:
    prefix: -min_length
- id: out_option
  doc: "Indicate 1 (peptide table only), 2 (statistics only) or (both peptide table\
    \ + statistics) (default: '1')"
  type: string
  inputBinding:
    prefix: -out_option
- id: enzyme
  doc: "The enzyme used for peptide digestion. (default: 'Trypsin' valid: 'Arg-C',\
    \ 'Arg-C/P', 'Asp-N', 'proline endopeptidase', 'glutamyl endopeptidase', 'proline-endopeptidase/HKR',\
    \ 'Glu- C+P', 'PepsinA + P', 'cyanogen-bromide', 'Clostripain/P', 'Asp-N/B', 'Asp-N_ambic',\
    \ 'Chymotrypsin', 'Chymotrypsin/P', 'CNBr', 'Formic_acid', 'Lys-C', 'Lys-N', 'Lys-C/P',\
    \ 'PepsinA', 'TrypChymo', 'Trypsin/P', 'V8-DE', 'V8-E', 'leukocyte elastase',\
    \ 'elastase-trypsin-chymotrypsin', 'no cleavage', 'unspecific cleavage', 'Alpha-lytic\
    \ protease', '2-iodobenzoate', 'iodosobenzoate', 'staphylococcal protease/D',\
    \ 'Trypsin')"
  type: string
  inputBinding:
    prefix: -enzyme
- id: motif
  doc: "The motif for the restricted peptidome (default: 'M')"
  type: string
  inputBinding:
    prefix: -motif
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
- DigestorMotif
