class: CommandLineTool
id: loadGenome.pl.cwl
inputs:
- id: org
  doc: <organism name, ok to use 'null'>
  type: boolean
  inputBinding:
    prefix: -org
- id: gid
  doc: (Use gene_id instead of transcript_id to identify the transcripts from GTF
    files)
  type: boolean
  inputBinding:
    prefix: -gid
- id: tid
  doc: (Use transcript_id instead of gene_id to identify the transcripts from GTF
    files, default)
  type: boolean
  inputBinding:
    prefix: -tid
- id: ensembl_repeats
  doc: (gff3 annotations from ensembl usually have repeat definitions too)
  type: string
  inputBinding:
    prefix: -ensemblRepeats
outputs: []
cwlVersion: v1.1
baseCommand:
- loadGenome.pl
