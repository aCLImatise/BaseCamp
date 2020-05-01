#!/usr/bin/env cwl-runner

baseCommand:
- loadGenome.pl
class: CommandLineTool
cwlVersion: v1.0
id: loadgenome.pl
inputs:
- doc: <organism name, ok to use 'null'>
  id: org
  inputBinding:
    prefix: -org
  type: boolean
- doc: (Use gene_id instead of transcript_id to identify the transcripts from GTF
    files)
  id: gid
  inputBinding:
    prefix: -gid
  type: boolean
- doc: (Use transcript_id instead of gene_id to identify the transcripts from GTF
    files, default)
  id: tid
  inputBinding:
    prefix: -tid
  type: boolean
- doc: (gff3 annotations from ensembl usually have repeat definitions too)
  id: ensembl_repeats
  inputBinding:
    prefix: -ensemblRepeats
  type: string
