class: CommandLineTool
id: clipcontext_eir.cwl
inputs:
- id: in_tr
  doc: "Transcript sequence IDs list file for which to extract\nexon + intron regions"
  type: File
  inputBinding:
    prefix: --tr
- id: in_gtf
  doc: Genomic annotations (hg38) GTF file (.gtf or .gtf.gz)
  type: File
  inputBinding:
    prefix: --gtf
- id: in_exon_out
  doc: Exon regions BED output file
  type: File
  inputBinding:
    prefix: --exon-out
- id: in_intron_out
  doc: Intron regions BED output file
  type: File
  inputBinding:
    prefix: --intron-out
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_exon_out
  doc: Exon regions BED output file
  type: File
  outputBinding:
    glob: $(inputs.in_exon_out)
- id: out_intron_out
  doc: Intron regions BED output file
  type: File
  outputBinding:
    glob: $(inputs.in_intron_out)
cwlVersion: v1.1
baseCommand:
- clipcontext
- eir
