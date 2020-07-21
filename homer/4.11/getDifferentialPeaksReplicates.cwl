class: CommandLineTool
id: ../../../getDifferentialPeaksReplicates.pl.cwl
inputs:
- id: b
  doc: '[background tagdir2] ...'
  type: string
  inputBinding:
    prefix: -b
- id: i
  doc: '[Input tagdir2] ...'
  type: string
  inputBinding:
    prefix: -i
- id: fold_enrichment_bg
  doc: '<#> (fold enrichment over bg, default: 2)'
  type: boolean
  inputBinding:
    prefix: -f
- id: fdr_bg_default
  doc: '<#> (FDR over bg, default: 0.05)'
  type: boolean
  inputBinding:
    prefix: -q
- id: fdr
  doc: <#>, -F <#>, -L <#> (parameters for findPeaks)
  type: boolean
  inputBinding:
    prefix: -fdr
- id: genome
  doc: (genome version to use for annotation)
  type: string
  inputBinding:
    prefix: -genome
- id: de_seq_two
  doc: '| -DESeq | -edgeR (differential stats algorithm, default: DESeq2)'
  type: boolean
  inputBinding:
    prefix: -DESeq2
- id: balanced
  doc: '(normalize signal across peaks, default: normalize to read totals)'
  type: boolean
  inputBinding:
    prefix: -balanced
- id: frag_length
  doc: <#> (standardize estimated fragment length across analysis)
  type: boolean
  inputBinding:
    prefix: -fragLength
- id: all
  doc: (report all peaks, not just differentially regulated)
  type: boolean
  inputBinding:
    prefix: -all
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: ip
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tag_dir_two
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- getDifferentialPeaksReplicates.pl
