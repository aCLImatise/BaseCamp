class: CommandLineTool
id: Digestor.cwl
inputs:
- id: in_in
  doc: "*                  Input file (valid formats: 'fasta')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*                 Output file (peptides) (valid formats: 'idXML', 'fasta')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_out_type
  doc: "Set this if you cannot control the filename of 'out', e.g., in TOPPAS. (valid:\
    \ 'idXML', 'fasta')"
  type: File?
  inputBinding:
    prefix: -out_type
- id: in_missed_cleavages
  doc: "The number of allowed missed cleavages (default: '1' min: '0')"
  type: long?
  inputBinding:
    prefix: -missed_cleavages
- id: in_min_length
  doc: "Minimum length of peptide (default: '6')"
  type: long?
  inputBinding:
    prefix: -min_length
- id: in_max_length
  doc: "Maximum length of peptide (default: '40')"
  type: long?
  inputBinding:
    prefix: -max_length
- id: in_enzyme
  doc: "The type of digestion enzyme (default: 'Trypsin' valid: 'Asp-N', 'Arg-C',\
    \ 'Arg-C/P', 'Lys-C', 'Lys-N', 'no cleavage', 'unspecific cleavage', 'Formic_acid',\
    \ 'Chymotrypsin/P', 'CNBr', 'Asp-N_ambic', 'Chymotrypsin', 'Lys-C/P', 'PepsinA',\
    \ 'V8-DE', 'V8-E', 'Asp-N/B', 'Glu-C+P', 'PepsinA + P', 'leukocyte elastase',\
    \ 'proline endopeptidase', 'glutamyl endopeptidase', 'Alpha-lytic protease', '2-iodobenzoate',\
    \ 'iodosobenzoate', 'staphylococcal protease/D', 'proline-endopeptidase/HKR',\
    \ 'cyanogen-bromide', 'Clostripain/P', 'elastase-trypsin-chymotrypsin', 'Trypsin',\
    \ 'TrypChymo', 'Trypsin/P')"
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
  doc: "*                 Output file (peptides) (valid formats: 'idXML', 'fasta')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_out_type
  doc: "Set this if you cannot control the filename of 'out', e.g., in TOPPAS. (valid:\
    \ 'idXML', 'fasta')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_type)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openms:2.6.0--h4afb90d_0
cwlVersion: v1.1
baseCommand:
- Digestor
