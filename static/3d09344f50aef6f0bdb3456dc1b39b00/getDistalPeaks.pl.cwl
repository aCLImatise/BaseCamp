class: CommandLineTool
id: getDistalPeaks.pl.cwl
inputs:
- id: in_absolute_distance_keep
  doc: '<#> (Absolute Distance from TSS to keep, default: 3000)'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_prox
  doc: (keep proximal peaks intead of distal peaks)
  type: boolean
  inputBinding:
    prefix: -prox
- id: in_intergenic
  doc: (keep only intergenic, distal peaks)
  type: boolean
  inputBinding:
    prefix: -intergenic
- id: in_intragenic
  doc: (keep only intragenic, distal peaks)
  type: boolean
  inputBinding:
    prefix: -intragenic
- id: in_notts
  doc: (Exclude peaks within 10000 bp of the Transcription termination site)
  type: boolean
  inputBinding:
    prefix: -noTTS
- id: in_gtf
  doc: (custom gene annotation file, -gff/-gff3 can work, but GTF is better)
  type: File
  inputBinding:
    prefix: -gtf
- id: in_gid
  doc: (parse GTF file by gene_id instead of transcript_id)
  type: boolean
  inputBinding:
    prefix: -gid
- id: in_targets
  doc: (output target genes instead of peaks)
  type: boolean
  inputBinding:
    prefix: -targets
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- getDistalPeaks.pl
