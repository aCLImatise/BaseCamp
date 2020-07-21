class: CommandLineTool
id: ../../../clipcontext_eir.cwl
inputs:
- id: tr
  doc: Transcript sequence IDs list file for which to extract exon + intron regions
  type: string
  inputBinding:
    prefix: --tr
- id: gtf
  doc: Genomic annotations (hg38) GTF file (.gtf or .gtf.gz)
  type: string
  inputBinding:
    prefix: --gtf
- id: exon_out
  doc: Exon regions BED output file
  type: string
  inputBinding:
    prefix: --exon-out
- id: intron_out
  doc: Intron regions BED output file
  type: string
  inputBinding:
    prefix: --intron-out
outputs: []
cwlVersion: v1.1
baseCommand:
- clipcontext
- eir
