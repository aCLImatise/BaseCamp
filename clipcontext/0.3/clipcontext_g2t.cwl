class: CommandLineTool
id: clipcontext_g2t.cwl
inputs:
- id: thr
  doc: 'Site score threshold for filtering --in BED file (default: None)'
  type: double
  inputBinding:
    prefix: --thr
- id: rev_filter
  doc: 'Reverse filtering (keep values <= threshold and prefer sites with smaller
    values) (default: False)'
  type: boolean
  inputBinding:
    prefix: --rev-filter
- id: min_len
  doc: 'Minimum input site length for filtering --in BED file (default: False)'
  type: long
  inputBinding:
    prefix: --min-len
- id: max_len
  doc: 'Maximum input site length for filtering --in BED file (default: False)'
  type: long
  inputBinding:
    prefix: --max-len
- id: min_exon_ol
  doc: 'Minimum exon overlap of a site to be reported as transcript hit (intersectBed
    -f parameter) (default: 0.9)'
  type: double
  inputBinding:
    prefix: --min-exon-ol
- id: merge_mode
  doc: '{1,2,3}  Defines how to merge overlapping transcript sites (overlap controlled
    by --merge-ext). (1) only merge sites overlapping at exon borders, (2) merge all
    overlapping sites, (3) do NOT merge overlapping sites (default: 1)'
  type: boolean
  inputBinding:
    prefix: --merge-mode
- id: merge_ext
  doc: 'Extend regions mapped to transcripts by --merge-ext before running mergeBed
    to merge overlapping regions (default: 10)'
  type: long
  inputBinding:
    prefix: --merge-ext
- id: add_out
  doc: 'Output centered and extended sites and sequences for all transcript matches
    (unique + non-unique) (default: False)'
  type: boolean
  inputBinding:
    prefix: --add-out
- id: seq_ext
  doc: 'Up- and downstream extension of centered sites for context sequence extraction
    (default: 30)'
  type: long
  inputBinding:
    prefix: --seq-ext
- id: all_gen_out
  doc: 'Output all centered and extended genomic regions, instead of only the ones
    with unique transcript matches (default: False)'
  type: boolean
  inputBinding:
    prefix: --all-gen-out
- id: gen_uniq_ids
  doc: 'Generate unique column 4 IDs for --in BED file entries (default: False)'
  type: boolean
  inputBinding:
    prefix: --gen-uniq-ids
- id: in
  doc: Genomic regions (hg38) BED file (6-column format)
  type: string
  inputBinding:
    prefix: --in
- id: out
  doc: Output results folder
  type: string
  inputBinding:
    prefix: --out
- id: tr
  doc: Transcript sequence IDs list file to define transcripts to map on
  type: string
  inputBinding:
    prefix: --tr
- id: gtf
  doc: Genomic annotations (hg38) GTF file (.gtf or .gtf.gz)
  type: string
  inputBinding:
    prefix: --gtf
- id: gen
  doc: Genomic sequences (hg38) .2bit file
  type: string
  inputBinding:
    prefix: --gen
outputs: []
cwlVersion: v1.1
baseCommand:
- clipcontext
- g2t
