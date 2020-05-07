class: CommandLineTool
id: getDistalPeaks.pl.cwl
inputs:
- id: d
  doc: '<#> (Absolute Distance from TSS to keep, default: 3000)'
  type: boolean
  inputBinding:
    prefix: -d
- id: prox
  doc: (keep proximal peaks intead of distal peaks)
  type: boolean
  inputBinding:
    prefix: -prox
- id: intergenic
  doc: (keep only intergenic, distal peaks)
  type: boolean
  inputBinding:
    prefix: -intergenic
- id: intragenic
  doc: (keep only intragenic, distal peaks)
  type: boolean
  inputBinding:
    prefix: -intragenic
- id: notts
  doc: (Exclude peaks within 10000 bp of the Transcription termination site)
  type: boolean
  inputBinding:
    prefix: -noTTS
- id: gtf
  doc: (custom gene annotation file, -gff/-gff3 can work, but GTF is better)
  type: string
  inputBinding:
    prefix: -gtf
- id: gid
  doc: (parse GTF file by gene_id instead of transcript_id)
  type: boolean
  inputBinding:
    prefix: -gid
- id: targets
  doc: (output target genes instead of peaks)
  type: boolean
  inputBinding:
    prefix: -targets
outputs: []
cwlVersion: v1.1
baseCommand:
- getDistalPeaks.pl
