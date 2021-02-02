class: CommandLineTool
id: parseGTF.pl.cwl
inputs:
- id: in_gff
  doc: (input file is gff format-treats 9th column as ID)
  type: boolean
  inputBinding:
    prefix: -gff
- id: in_gff_three
  doc: (input file is gff3 format - looks for parent attribute to assign gene name)
  type: boolean
  inputBinding:
    prefix: -gff3
- id: in_gid
  doc: (use gene IDs as the primary identifier)
  type: boolean
  inputBinding:
    prefix: -gid
- id: in_tid
  doc: (use transcript IDs as the primary identifier, default)
  type: boolean
  inputBinding:
    prefix: -tid
- id: in_remove_acc_ver
  doc: (Normally any .1, .2, etc. at end of accession numbers, i.e. AT1G01040.2)
  type: boolean
  inputBinding:
    prefix: -removeAccVer
- id: in_remove_ensembl_ver
  doc: (remove 'transcript:' and '_T01' style ids)
  type: boolean
  inputBinding:
    prefix: -removeEnsemblVer
- id: in_features
  doc: '[feature2] ... (Features to report, default: exon)'
  type: long
  inputBinding:
    prefix: -features
- id: in_keep_all
  doc: (Normally, only transcripts with exon annotations are used)
  type: boolean
  inputBinding:
    prefix: -keepAll
- id: in_ann_tss_start_offset
  doc: '<#> (distance upstream of TSS to start promoter annotation, default: -1000)'
  type: boolean
  inputBinding:
    prefix: -annTSSstartOffset
- id: in_an_nts_send_offset
  doc: '<#> (distance upstream of TSS to start promoter annotation, default: 100)'
  type: boolean
  inputBinding:
    prefix: -annTSSendOffset
- id: in_ann_tts_start_offset
  doc: '<#> (distance upstream of TSS to start promoter annotation, default: -100)'
  type: boolean
  inputBinding:
    prefix: -annTTSstartOffset
- id: in_an_ntt_send_offset
  doc: '<#> (distance upstream of TSS to start promoter annotation, default: 1000)'
  type: boolean
  inputBinding:
    prefix: -annTTSendOffset
- id: in_gtf_format_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_mode
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- parseGTF.pl
