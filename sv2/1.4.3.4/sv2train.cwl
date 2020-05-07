class: CommandLineTool
id: sv2train.cwl
inputs:
- id: bam
  doc: '...     bam file(s)'
  type: boolean
  inputBinding:
    prefix: -bam
- id: vcf
  doc: '...     vcf files(s) of SVs'
  type: boolean
  inputBinding:
    prefix: -vcf
- id: bed
  doc: '...     bed files(s) of SVs'
  type: boolean
  inputBinding:
    prefix: -bed
- id: snv
  doc: '...     snv vcf files(s), must be bgzipped and tabixed'
  type: boolean
  inputBinding:
    prefix: -snv
- id: ped
  doc: '...     ped files(s)'
  type: boolean
  inputBinding:
    prefix: -ped
- id: ini
  doc: '...     path to configuration INI file, default lives in sv2 package'
  type: boolean
  inputBinding:
    prefix: -ini
- id: genome
  doc: 'reference genome build <hg19, hg38, mm10> [default: hg19]'
  type: boolean
  inputBinding:
    prefix: -genome
- id: pcr_free
  doc: GC content normalization for pcr free sequences
  type: boolean
  inputBinding:
    prefix: -pcrfree
- id: m
  doc: bwa mem -M compatibility, split-reads flagged as secondary instead of supplementary
  type: boolean
  inputBinding:
    prefix: -M
- id: pre
  doc: preprocessing output directory, skips preprocessing
  type: boolean
  inputBinding:
    prefix: -pre
- id: feats
  doc: feature extraction output directory, skips feature extraction
  type: boolean
  inputBinding:
    prefix: -feats
- id: log
  doc: 'log file for standard error messages [default: STDOUT]'
  type: boolean
  inputBinding:
    prefix: -log
- id: tmp_dir
  doc: 'directory for temporary files [default: working directory]'
  type: boolean
  inputBinding:
    prefix: -tmp-dir
- id: seed
  doc: 'random seed for preprocessing shuffling [default: 42]'
  type: boolean
  inputBinding:
    prefix: -seed
- id: out
  doc: 'output prefix [default: sv2_training_features]'
  type: boolean
  inputBinding:
    prefix: -out
- id: o_dir
  doc: 'output path, location for sv2 output directories [default: working directory]'
  type: boolean
  inputBinding:
    prefix: -odir
outputs: []
cwlVersion: v1.1
baseCommand:
- sv2train
