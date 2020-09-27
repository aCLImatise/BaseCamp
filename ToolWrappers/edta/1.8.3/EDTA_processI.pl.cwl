class: CommandLineTool
id: EDTA_processI.pl.cwl
inputs:
- id: in_genome
  doc: '[File]  The genome FASTA'
  type: boolean
  inputBinding:
    prefix: -genome
- id: in_ltr
  doc: '[File]  The raw LTR library FASTA'
  type: boolean
  inputBinding:
    prefix: -ltr
- id: in_tir
  doc: '[File]  The raw TIR library FASTA'
  type: boolean
  inputBinding:
    prefix: -tir
- id: in_heli_tron
  doc: '[File]  The raw Helitron library FASTA'
  type: boolean
  inputBinding:
    prefix: -helitron
- id: in_min_diff_ltr
  doc: '[float] The minimum fold difference in richness between LTRs and contaminants
    (default: 1)'
  type: boolean
  inputBinding:
    prefix: -mindiff_ltr
- id: in_min_diff_tir
  doc: '[float] The minimum fold difference in richness between TIRs and contaminants
    (default: 1)'
  type: boolean
  inputBinding:
    prefix: -mindiff_tir
- id: in_min_diff_hel
  doc: '[float] The minimum fold difference in richness between Helitrons and contaminants
    (default: 4)'
  type: boolean
  inputBinding:
    prefix: -mindiff_hel
- id: in_repeatmasker
  doc: '[path]    The directory containing RepeatMasker (default: read from ENV)'
  type: boolean
  inputBinding:
    prefix: -repeatmasker
- id: in_blast
  doc: '[path]   The directory containing Blastn (default: read from ENV)'
  type: boolean
  inputBinding:
    prefix: -blast
- id: in_prot_lib
  doc: "[File] Protein-coding aa sequences to be removed from TE candidates. (default\
    \ lib: alluniRefprexp082813 (plant))\nYou may use uniprot_sprot database available\
    \ from here:\nftp://ftp.uniprot.org/pub/databases/uniprot/current_release/knowledgebase/taxonomic_divisions/"
  type: boolean
  inputBinding:
    prefix: -protlib
- id: in_threads
  doc: '[int]   Number of theads to run this script'
  type: boolean
  inputBinding:
    prefix: -threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- EDTA_processI.pl
