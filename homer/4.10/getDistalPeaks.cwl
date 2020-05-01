#!/usr/bin/env cwl-runner

baseCommand:
- getDistalPeaks.pl
class: CommandLineTool
cwlVersion: v1.0
id: getdistalpeaks.pl
inputs:
- doc: '<#> (Absolute Distance from TSS to keep, default: 3000)'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: (keep proximal peaks intead of distal peaks)
  id: prox
  inputBinding:
    prefix: -prox
  type: boolean
- doc: (keep only intergenic, distal peaks)
  id: intergenic
  inputBinding:
    prefix: -intergenic
  type: boolean
- doc: (keep only intragenic, distal peaks)
  id: intragenic
  inputBinding:
    prefix: -intragenic
  type: boolean
- doc: (Exclude peaks within 10000 bp of the Transcription termination site)
  id: notts
  inputBinding:
    prefix: -noTTS
  type: boolean
- doc: (custom gene annotation file, -gff/-gff3 can work, but GTF is better)
  id: gtf
  inputBinding:
    prefix: -gtf
  type: string
- doc: (parse GTF file by gene_id instead of transcript_id)
  id: gid
  inputBinding:
    prefix: -gid
  type: boolean
- doc: (output target genes instead of peaks)
  id: targets
  inputBinding:
    prefix: -targets
  type: boolean
