class: CommandLineTool
id: EDTA_processI.pl.cwl
inputs:
- id: genome
  doc: '[File]  The genome FASTA'
  type: boolean
  inputBinding:
    prefix: -genome
- id: ltr
  doc: '[File]  The raw LTR library FASTA'
  type: boolean
  inputBinding:
    prefix: -ltr
- id: tir
  doc: '[File]  The raw TIR library FASTA'
  type: boolean
  inputBinding:
    prefix: -tir
- id: heli_tron
  doc: '[File]  The raw Helitron library FASTA'
  type: boolean
  inputBinding:
    prefix: -helitron
- id: min_diff_ltr
  doc: '[float] The minimum fold difference in richness between LTRs and contaminants
    (default: 1)'
  type: boolean
  inputBinding:
    prefix: -mindiff_ltr
- id: min_diff_tir
  doc: '[float] The minimum fold difference in richness between TIRs and contaminants
    (default: 1)'
  type: boolean
  inputBinding:
    prefix: -mindiff_tir
- id: min_diff_hel
  doc: '[float] The minimum fold difference in richness between Helitrons and contaminants
    (default: 4)'
  type: boolean
  inputBinding:
    prefix: -mindiff_hel
- id: repeatmasker
  doc: '[path]    The directory containing RepeatMasker (default: read from ENV)'
  type: boolean
  inputBinding:
    prefix: -repeatmasker
- id: blast
  doc: '[path]   The directory containing Blastn (default: read from ENV)'
  type: boolean
  inputBinding:
    prefix: -blast
- id: prot_lib
  doc: '[File] Protein-coding aa sequences to be removed from TE candidates. (default
    lib: alluniRefprexp082813 (plant)) You may use uniprot_sprot database available
    from here: ftp://ftp.uniprot.org/pub/databases/uniprot/current_release/knowledgebase/taxonomic_divisions/'
  type: boolean
  inputBinding:
    prefix: -protlib
- id: threads
  doc: '[int]   Number of theads to run this script'
  type: boolean
  inputBinding:
    prefix: -threads
outputs: []
cwlVersion: v1.1
baseCommand:
- EDTA_processI.pl
