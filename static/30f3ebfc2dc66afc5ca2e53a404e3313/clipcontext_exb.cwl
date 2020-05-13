class: CommandLineTool
id: clipcontext_exb.cwl
inputs:
- id: max_dist
  doc: 'Maximum distance of CLIP peak region end to nearest exon end for CLIP region
    to still be output (default: 50)'
  type: long
  inputBinding:
    prefix: --max-dist
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
- id: thr
  doc: 'Filter out --in BED regions < --thr column 5 score (default: no filtering)'
  type: double
  inputBinding:
    prefix: --thr
- id: rev_filter
  doc: 'Reverse filtering (keep values <= --thr and prefer sites with smaller values)
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --rev-filter
- id: in
  doc: CLIP peak regions input BED file (6-column format)
  type: string
  inputBinding:
    prefix: --in
- id: tr
  doc: Transcript sequence IDs list file to define exon regions
  type: string
  inputBinding:
    prefix: --tr
- id: gtf
  doc: Genomic annotations (hg38) GTF file (.gtf or .gtf.gz)
  type: string
  inputBinding:
    prefix: --gtf
- id: out
  doc: CLIP peak regions near exon borders output BED file
  type: string
  inputBinding:
    prefix: --out
outputs: []
cwlVersion: v1.1
baseCommand:
- clipcontext
- exb
