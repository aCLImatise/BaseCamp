class: CommandLineTool
id: EDTA_raw.pl.cwl
inputs:
- id: in_genome
  doc: '[File]  The genome FASTA'
  type: boolean?
  inputBinding:
    prefix: --genome
- id: in_species
  doc: "[rice|maize|others]   Specify the species for identification\nof TIR candidates.\
    \ Default: others"
  type: boolean?
  inputBinding:
    prefix: --species
- id: in_type
  doc: "[ltr|tir|helitron|all]  Specify which type of raw TE candidates\nyou want\
    \ to get. Default: all"
  type: boolean?
  inputBinding:
    prefix: --type
- id: in_overwrite
  doc: "[0|1]   If previous results are found, decide to\noverwrite (1, rerun) or\
    \ not (0, default)."
  type: boolean?
  inputBinding:
    prefix: --overwrite
- id: in_convert_seq_name
  doc: "[0|1]   Convert long sequence name to <= 15\ncharacters and remove annotations\
    \ (1,\ndefault) or use the original (0)"
  type: boolean?
  inputBinding:
    prefix: --convert_seq_name
- id: in_te_sorter
  doc: '[path]  Path to the TEsorter program. (default: find from ENV)'
  type: boolean?
  inputBinding:
    prefix: --tesorter
- id: in_repeatmasker
  doc: '[path]  Path to the RepeatMasker program. (default: find from ENV)'
  type: boolean?
  inputBinding:
    prefix: --repeatmasker
- id: in_threads
  doc: '[int]   Number of theads to run this script. Default: 4'
  type: boolean?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/edta:1.9.6--1
cwlVersion: v1.1
baseCommand:
- EDTA_raw.pl
