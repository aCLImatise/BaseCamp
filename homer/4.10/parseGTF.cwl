#!/usr/bin/env cwl-runner

baseCommand:
- parseGTF.pl
class: CommandLineTool
cwlVersion: v1.0
id: parsegtf.pl
inputs:
- doc: (input file is gff format-treats 9th column as ID)
  id: gff
  inputBinding:
    prefix: -gff
  type: boolean
- doc: (input file is gff3 format - looks for parent attribute to assign gene name)
  id: gff3
  inputBinding:
    prefix: -gff3
  type: boolean
- doc: (use gene IDs as the primary identifier)
  id: gid
  inputBinding:
    prefix: -gid
  type: boolean
- doc: (use transcript IDs as the primary identifier, default)
  id: tid
  inputBinding:
    prefix: -tid
  type: boolean
- doc: (Normally any .1, .2, etc. at end of accession numbers, i.e. AT1G01040.2)
  id: remove_acc_ver
  inputBinding:
    prefix: -removeAccVer
  type: boolean
- doc: (remove 'transcript:' and '_T01' style ids)
  id: remove_ensembl_ver
  inputBinding:
    prefix: -removeEnsemblVer
  type: boolean
- doc: '[feature2] ... (Features to report, default: exon)'
  id: features
  inputBinding:
    prefix: -features
  type: string
- doc: (Normally, only transcripts with exon annotations are used)
  id: keep_all
  inputBinding:
    prefix: -keepAll
  type: boolean
- doc: '<#> (distance upstream of TSS to start promoter annotation, default: -1000)'
  id: ann_tss_start_offset
  inputBinding:
    prefix: -annTSSstartOffset
  type: boolean
- doc: '<#> (distance upstream of TSS to start promoter annotation, default: 100)'
  id: an_nts_send_offset
  inputBinding:
    prefix: -annTSSendOffset
  type: boolean
- doc: '<#> (distance upstream of TSS to start promoter annotation, default: -100)'
  id: ann_tts_start_offset
  inputBinding:
    prefix: -annTTSstartOffset
  type: boolean
- doc: '<#> (distance upstream of TSS to start promoter annotation, default: 1000)'
  id: an_ntt_send_offset
  inputBinding:
    prefix: -annTTSendOffset
  type: boolean
