class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/homer.cwl
inputs:
- id: prot
  doc: ': Sequence type (-dna)'
  type: boolean
  inputBinding:
    prefix: -prot
- id: _sequence_file
  doc: ': Sequence File'
  type: File
  inputBinding:
    prefix: -s
- id: _groupstat_file
  doc: ': Group/Stat File'
  type: File
  inputBinding:
    prefix: -g
- id: mer
  doc: ': Mer File'
  type: File
  inputBinding:
    prefix: -mer
- id: pssm_motif_file
  doc: ': PSSM Motif File'
  type: File
  inputBinding:
    prefix: -m
- id: output_file_prefix
  doc: ': output file prefix'
  type: File
  inputBinding:
    prefix: -o
- id: seed
  doc: ': seed file'
  type: File
  inputBinding:
    prefix: -seed
- id: offset
  doc: '<#> : offset of sequence from TSS (-2000)'
  type: boolean
  inputBinding:
    prefix: -offset
- id: filtering_cutoff_ratio
  doc: ": filtering cutoff for ratio of N's in sequence (0.9)"
  type: double
  inputBinding:
    prefix: -N
- id: seq_less
  doc: '<#> : filter sequences shorter than #'
  type: boolean
  inputBinding:
    prefix: -seqless
- id: seq_more
  doc: '<#> : filter sequences longer than #'
  type: boolean
  inputBinding:
    prefix: -seqmore
outputs: []
cwlVersion: v1.1
baseCommand:
- homer
