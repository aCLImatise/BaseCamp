class: CommandLineTool
id: clipcontext_t2g.cwl
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
- id: seq_ext
  doc: 'Up- and downstream extension of centered sites for context sequence extraction
    (default: 30)'
  type: long
  inputBinding:
    prefix: --seq-ext
- id: gen_uniq_ids
  doc: 'Generate unique column 4 IDs for --in BED file entries (default: False)'
  type: boolean
  inputBinding:
    prefix: --gen-uniq-ids
- id: in
  doc: Transcript regions BED file (6-column format) (transcript IDs need to be in
    --gtf)
  type: string
  inputBinding:
    prefix: --in
- id: out
  doc: Output results folder
  type: string
  inputBinding:
    prefix: --out
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
- t2g
