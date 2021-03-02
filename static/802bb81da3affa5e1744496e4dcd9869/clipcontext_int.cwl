class: CommandLineTool
id: clipcontext_int.cwl
inputs:
- id: in_min_intron_ol
  doc: "Minimum intron overlap of a site to be reported as\nintron overlapping (intersectBed\
    \ -f parameter)\n(default: 0.9)"
  type: double?
  inputBinding:
    prefix: --min-intron-ol
- id: in_min_len
  doc: "Minimum input site length for filtering --in BED file\n(default: False)"
  type: long?
  inputBinding:
    prefix: --min-len
- id: in_max_len
  doc: "Maximum input site length for filtering --in BED file\n(default: False)"
  type: long?
  inputBinding:
    prefix: --max-len
- id: in_thr
  doc: "Filter out --in BED regions < --thr column 5 score\n(default: no filtering)"
  type: double?
  inputBinding:
    prefix: --thr
- id: in_rev_filter
  doc: "Reverse filtering (keep values <= --thr and prefer\nsites with smaller values)\
    \ (default: False)"
  type: boolean?
  inputBinding:
    prefix: --rev-filter
- id: in_in
  doc: CLIP peak regions input BED file (6-column format)
  type: File?
  inputBinding:
    prefix: --in
- id: in_tr
  doc: Transcript sequence IDs list file to define intron
  type: File?
  inputBinding:
    prefix: --tr
- id: in_out
  doc: "CLIP peak regions overlapping with introns output BED\nfile\n"
  type: File?
  inputBinding:
    prefix: --out
- id: in_gtf
  doc: ''
  type: string?
  inputBinding:
    prefix: --gtf
- id: in_regions
  doc: --gtf str             Genomic annotations (hg38) GTF file (.gtf or .gtf.gz)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "CLIP peak regions overlapping with introns output BED\nfile\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- clipcontext
- int
