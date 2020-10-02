class: CommandLineTool
id: sv2train.cwl
inputs:
- id: in_bam
  doc: '...     bam file(s)'
  type: boolean
  inputBinding:
    prefix: -bam
- id: in_vcf
  doc: '...     vcf files(s) of SVs'
  type: boolean
  inputBinding:
    prefix: -vcf
- id: in_bed
  doc: '...     bed files(s) of SVs'
  type: boolean
  inputBinding:
    prefix: -bed
- id: in_snv
  doc: '...     snv vcf files(s), must be bgzipped and tabixed'
  type: boolean
  inputBinding:
    prefix: -snv
- id: in_ped
  doc: '...     ped files(s)'
  type: boolean
  inputBinding:
    prefix: -ped
- id: in_ini
  doc: '...     path to configuration INI file, default lives in sv2 package'
  type: boolean
  inputBinding:
    prefix: -ini
- id: in_genome
  doc: 'reference genome build <hg19, hg38, mm10> [default: hg19]'
  type: boolean
  inputBinding:
    prefix: -genome
- id: in_pcr_free
  doc: GC content normalization for pcr free sequences
  type: boolean
  inputBinding:
    prefix: -pcrfree
- id: in_bwa_mem_m
  doc: bwa mem -M compatibility, split-reads flagged as secondary instead of supplementary
  type: boolean
  inputBinding:
    prefix: -M
- id: in_pre
  doc: preprocessing output directory, skips preprocessing
  type: Directory
  inputBinding:
    prefix: -pre
- id: in_feats
  doc: feature extraction output directory, skips feature extraction
  type: Directory
  inputBinding:
    prefix: -feats
- id: in_log
  doc: 'log file for standard error messages [default: STDOUT]'
  type: boolean
  inputBinding:
    prefix: -log
- id: in_tmp_dir
  doc: 'directory for temporary files [default: working directory]'
  type: boolean
  inputBinding:
    prefix: -tmp-dir
- id: in_seed
  doc: 'random seed for preprocessing shuffling [default: 42]'
  type: boolean
  inputBinding:
    prefix: -seed
- id: in_out
  doc: 'output prefix [default: sv2_training_features]'
  type: boolean
  inputBinding:
    prefix: -out
- id: in_o_dir
  doc: 'output path, location for sv2 output directories [default: working directory]'
  type: File
  inputBinding:
    prefix: -odir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_pre
  doc: preprocessing output directory, skips preprocessing
  type: Directory
  outputBinding:
    glob: $(inputs.in_pre)
- id: out_feats
  doc: feature extraction output directory, skips feature extraction
  type: Directory
  outputBinding:
    glob: $(inputs.in_feats)
- id: out_o_dir
  doc: 'output path, location for sv2 output directories [default: working directory]'
  type: File
  outputBinding:
    glob: $(inputs.in_o_dir)
cwlVersion: v1.1
baseCommand:
- sv2train
