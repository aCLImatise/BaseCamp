class: CommandLineTool
id: getDifferentialPeaksReplicates.pl.cwl
inputs:
- id: in_b
  doc: '[background tagdir2] ...'
  type: long?
  inputBinding:
    prefix: -b
- id: in_i
  doc: '[Input tagdir2] ...'
  type: long?
  inputBinding:
    prefix: -i
- id: in_fold_enrichment_default
  doc: '<#> (fold enrichment over bg, default: 2)'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_fdr_bg_default
  doc: '<#> (FDR over bg, default: 0.05)'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_fdr
  doc: <#>, -F <#>, -L <#> (parameters for findPeaks)
  type: boolean?
  inputBinding:
    prefix: -fdr
- id: in_genome
  doc: (genome version to use for annotation)
  type: string?
  inputBinding:
    prefix: -genome
- id: in_de_seq_two
  doc: '(differential stats algorithm, default: DESeq2)'
  type: boolean?
  inputBinding:
    prefix: -DESeq2
- id: in_balanced
  doc: '(normalize signal across peaks, default: normalize to read totals)'
  type: boolean?
  inputBinding:
    prefix: -balanced
- id: in_frag_length
  doc: <#> (standardize estimated fragment length across analysis)
  type: boolean?
  inputBinding:
    prefix: -fragLength
- id: in_all
  doc: (report all peaks, not just differentially regulated)
  type: boolean?
  inputBinding:
    prefix: -all
- id: in_style
  doc: (findPeaks style to use for finding peaks)
  type: string?
  inputBinding:
    prefix: -style
- id: in_use
  doc: (use existing peaks in tag directories)
  type: string?
  inputBinding:
    prefix: -use
- id: in_use_specific_file
  doc: (use specific peak file instead of tagDir/peaks.txt or finding new one)
  type: File?
  inputBinding:
    prefix: -p
- id: in_t
  doc: ''
  type: long?
  inputBinding:
    prefix: -t
- id: in_ip
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_tag_dir_two
  doc: ''
  type: long?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- getDifferentialPeaksReplicates.pl
