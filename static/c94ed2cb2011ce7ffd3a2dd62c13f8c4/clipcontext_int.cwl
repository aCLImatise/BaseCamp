class: CommandLineTool
id: clipcontext_int.cwl
inputs:
- id: min_intron_ol
  doc: 'Minimum intron overlap of a site to be reported as intron overlapping (intersectBed
    -f parameter) (default: 0.9)'
  type: double
  inputBinding:
    prefix: --min-intron-ol
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
  doc: Transcript sequence IDs list file to define intron regions
  type: string
  inputBinding:
    prefix: --tr
- id: gtf
  doc: Genomic annotations (hg38) GTF file (.gtf or .gtf.gz)
  type: string
  inputBinding:
    prefix: --gtf
- id: out
  doc: CLIP peak regions overlapping with introns output BED file
  type: string
  inputBinding:
    prefix: --out
outputs: []
cwlVersion: v1.1
baseCommand:
- clipcontext
- int
