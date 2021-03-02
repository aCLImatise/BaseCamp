class: CommandLineTool
id: clipcontext_exb.cwl
inputs:
- id: in_max_dist
  doc: "Maximum distance of CLIP peak region end to nearest exon end\nfor CLIP region\
    \ to still be output (default: 50)"
  type: long?
  inputBinding:
    prefix: --max-dist
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
  doc: "Filter out --in BED regions < --thr column 5 score (default:\nno filtering)"
  type: double?
  inputBinding:
    prefix: --thr
- id: in_rev_filter
  doc: "Reverse filtering (keep values <= --thr and prefer sites\nwith smaller values)\
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
  doc: Transcript sequence IDs list file to define exon regions
  type: File?
  inputBinding:
    prefix: --tr
- id: in_gtf
  doc: Genomic annotations (hg38) GTF file (.gtf or .gtf.gz)
  type: File?
  inputBinding:
    prefix: --gtf
- id: in_out
  doc: CLIP peak regions near exon borders output BED file
  type: File?
  inputBinding:
    prefix: --out
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: CLIP peak regions near exon borders output BED file
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/clipcontext:0.7--py_0
cwlVersion: v1.1
baseCommand:
- clipcontext
- exb
