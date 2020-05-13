class: CommandLineTool
id: sv2.cwl
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
- id: merge
  doc: merge overlapping SV breakpoints after genotyping
  type: boolean
  inputBinding:
    prefix: -merge
- id: min_ovr
  doc: 'minimum reciprocal overlap for merging [default: 0.8]'
  type: boolean
  inputBinding:
    prefix: -min-ovr
- id: no_an_no
  doc: 'genotype without annotating variants   '
  type: boolean
  inputBinding:
    prefix: -no-anno
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
- id: load_clf
  doc: add custom classifiers (-load-clf <clf.json>)
  type: boolean
  inputBinding:
    prefix: -load-clf
- id: clf
  doc: define classifier for genotyping [default:default]
  type: boolean
  inputBinding:
    prefix: -clf
- id: download
  doc: download required data files
  type: boolean
  inputBinding:
    prefix: -download
- id: hg19
  doc: hg19 fasta file
  type: boolean
  inputBinding:
    prefix: -hg19
- id: hg38
  doc: hg38 fasta file
  type: boolean
  inputBinding:
    prefix: -hg38
- id: mm10
  doc: mm10 fasta file
  type: boolean
  inputBinding:
    prefix: -mm10
- id: ini
  doc: 'configuration INI file [default: $SV2_INSTALL_PATH/config/sv2.ini]'
  type: boolean
  inputBinding:
    prefix: -ini
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
  doc: 'output prefix [default: sv2_genotypes]'
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
- sv2
