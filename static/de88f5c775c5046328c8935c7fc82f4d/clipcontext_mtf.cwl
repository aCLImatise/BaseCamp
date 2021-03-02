class: CommandLineTool
id: clipcontext_mtf.cwl
inputs:
- id: in_gtf
  doc: "Genomic annotations (hg38) GTF file (.gtf or .gtf.gz).\nRequired for --in\
    \ type (2) or (3)"
  type: File?
  inputBinding:
    prefix: --gtf
- id: in_gen
  doc: "Genomic sequences (hg38) .2bit file. Required for --in type\n(2) or (3)"
  type: File?
  inputBinding:
    prefix: --gen
- id: in_out
  doc: Output results folder, to store motif hit regions in BED
  type: Directory?
  inputBinding:
    prefix: --out
- id: in_data_id
  doc: "Data ID (column 1) for --stats-out output table to store\nmotif search results\
    \ (requires --stats-out to be set)"
  type: long?
  inputBinding:
    prefix: --data-id
- id: in_in
  doc: "Three different inputs possible: (1) output folder of\nclipcontext g2t or\
    \ clipcontext t2g with genomic and\ntranscript context sequence sets in which\
    \ to look for given\n--motif. (2) BED file (genomic or transcript regions) in\n\
    which to look for given --motif. (3) Transcript list file,\nto search for --motif\
    \ in the respective transcript\nsequences. Note that (2)+(3) need --gtf and --gen"
  type: File?
  inputBinding:
    prefix: --in
- id: in_motif
  doc: Motif or regular expression (RNA letters!) to search for in
  type: string?
  inputBinding:
    prefix: --motif
- id: in_files
  doc: --stats-out str  Output table to store motif search results in (for --in
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output results folder, to store motif hit regions in BED
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/clipcontext:0.7--py_0
cwlVersion: v1.1
baseCommand:
- clipcontext
- mtf
