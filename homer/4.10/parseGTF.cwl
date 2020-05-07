class: CommandLineTool
id: parseGTF.pl.cwl
inputs:
- id: gff
  doc: (input file is gff format-treats 9th column as ID)
  type: boolean
  inputBinding:
    prefix: -gff
- id: gff3
  doc: (input file is gff3 format - looks for parent attribute to assign gene name)
  type: boolean
  inputBinding:
    prefix: -gff3
- id: gid
  doc: (use gene IDs as the primary identifier)
  type: boolean
  inputBinding:
    prefix: -gid
- id: tid
  doc: (use transcript IDs as the primary identifier, default)
  type: boolean
  inputBinding:
    prefix: -tid
- id: remove_acc_ver
  doc: (Normally any .1, .2, etc. at end of accession numbers, i.e. AT1G01040.2)
  type: boolean
  inputBinding:
    prefix: -removeAccVer
- id: remove_ensembl_ver
  doc: (remove 'transcript:' and '_T01' style ids)
  type: boolean
  inputBinding:
    prefix: -removeEnsemblVer
- id: features
  doc: '[feature2] ... (Features to report, default: exon)'
  type: string
  inputBinding:
    prefix: -features
- id: keep_all
  doc: (Normally, only transcripts with exon annotations are used)
  type: boolean
  inputBinding:
    prefix: -keepAll
- id: ann_tss_start_offset
  doc: '<#> (distance upstream of TSS to start promoter annotation, default: -1000)'
  type: boolean
  inputBinding:
    prefix: -annTSSstartOffset
- id: an_nts_send_offset
  doc: '<#> (distance upstream of TSS to start promoter annotation, default: 100)'
  type: boolean
  inputBinding:
    prefix: -annTSSendOffset
- id: ann_tts_start_offset
  doc: '<#> (distance upstream of TSS to start promoter annotation, default: -100)'
  type: boolean
  inputBinding:
    prefix: -annTTSstartOffset
- id: an_ntt_send_offset
  doc: '<#> (distance upstream of TSS to start promoter annotation, default: 1000)'
  type: boolean
  inputBinding:
    prefix: -annTTSendOffset
outputs: []
cwlVersion: v1.1
baseCommand:
- parseGTF.pl
