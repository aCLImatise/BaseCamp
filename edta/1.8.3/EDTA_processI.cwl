#!/usr/bin/env cwl-runner

baseCommand:
- EDTA_processI.pl
class: CommandLineTool
cwlVersion: v1.0
id: edta_processi.pl
inputs:
- doc: '[File]  The genome FASTA'
  id: genome
  inputBinding:
    prefix: -genome
  type: boolean
- doc: '[File]  The raw LTR library FASTA'
  id: ltr
  inputBinding:
    prefix: -ltr
  type: boolean
- doc: '[File]  The raw TIR library FASTA'
  id: tir
  inputBinding:
    prefix: -tir
  type: boolean
- doc: '[File]  The raw Helitron library FASTA'
  id: heli_tron
  inputBinding:
    prefix: -helitron
  type: boolean
- doc: '[float] The minimum fold difference in richness between LTRs and contaminants
    (default: 1)'
  id: min_diff_ltr
  inputBinding:
    prefix: -mindiff_ltr
  type: boolean
- doc: '[float] The minimum fold difference in richness between TIRs and contaminants
    (default: 1)'
  id: min_diff_tir
  inputBinding:
    prefix: -mindiff_tir
  type: boolean
- doc: '[float] The minimum fold difference in richness between Helitrons and contaminants
    (default: 4)'
  id: min_diff_hel
  inputBinding:
    prefix: -mindiff_hel
  type: boolean
- doc: '[path]    The directory containing RepeatMasker (default: read from ENV)'
  id: repeatmasker
  inputBinding:
    prefix: -repeatmasker
  type: boolean
- doc: '[path]   The directory containing Blastn (default: read from ENV)'
  id: blast
  inputBinding:
    prefix: -blast
  type: boolean
- doc: '[File] Protein-coding aa sequences to be removed from TE candidates. (default
    lib: alluniRefprexp082813 (plant)) You may use uniprot_sprot database available
    from here: ftp://ftp.uniprot.org/pub/databases/uniprot/current_release/knowledgebase/taxonomic_divisions/'
  id: prot_lib
  inputBinding:
    prefix: -protlib
  type: boolean
- doc: '[int]   Number of theads to run this script'
  id: threads
  inputBinding:
    prefix: -threads
  type: boolean
