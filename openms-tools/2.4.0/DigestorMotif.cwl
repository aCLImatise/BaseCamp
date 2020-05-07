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
    \ 'V8-E', 'staphylococcal protease/D', 'V8-DE', 'Asp-N_ambic', 'Formic_acid',\
    \ 'TrypChymo', 'Trypsin/P',  'Lys-C/P', 'Chymotrypsin/P', 'leukocyte elastase',\
    \ 'Chymotrypsin', 'Lys-N', 'Asp-N', 'proline-endopeptidase/HKR', 'Glu-C+P', 'Trypsin',\
    \ 'Asp-N/B', 'unspecific cleavage', 'Alpha-lyt ic protease', '2-iodobenzoate',\
    \ 'iodosobenzoate', 'CNBr', 'PepsinA', 'proline endopeptidase', 'glutamyl endopeptidase',\
    \ 'PepsinA + P', 'cyanogen-bromide', 'Clostripain/P', 'elastas e-trypsin-chymotrypsin',\
    \ 'no cleavage', 'Arg-C/P', 'Lys-C')"
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
