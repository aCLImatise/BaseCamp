class: CommandLineTool
id: sv2.cwl
inputs:
- id: in_bam
  doc: '...     bam file(s)'
  type: boolean?
  inputBinding:
    prefix: -bam
- id: in_vcf
  doc: '...     vcf files(s) of SVs'
  type: boolean?
  inputBinding:
    prefix: -vcf
- id: in_bed
  doc: '...     bed files(s) of SVs'
  type: boolean?
  inputBinding:
    prefix: -bed
- id: in_snv
  doc: '...     snv vcf files(s), must be bgzipped and tabixed'
  type: boolean?
  inputBinding:
    prefix: -snv
- id: in_ped
  doc: '...     ped files(s)'
  type: boolean?
  inputBinding:
    prefix: -ped
- id: in_genome
  doc: 'reference genome build <hg19, hg38, mm10> [default: hg19]'
  type: boolean?
  inputBinding:
    prefix: -genome
- id: in_pcr_free
  doc: GC content normalization for pcr free sequences
  type: boolean?
  inputBinding:
    prefix: -pcrfree
- id: in_bwa_mem_flagged
  doc: bwa mem -M compatibility, split-reads flagged as secondary instead of supplementary
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_merge
  doc: merge overlapping SV breakpoints after genotyping
  type: boolean?
  inputBinding:
    prefix: -merge
- id: in_min_ovr
  doc: 'minimum reciprocal overlap for merging [default: 0.8]'
  type: boolean?
  inputBinding:
    prefix: -min-ovr
- id: in_no_an_no
  doc: genotype without annotating variants
  type: boolean?
  inputBinding:
    prefix: -no-anno
- id: in_pre
  doc: preprocessing output directory, skips preprocessing
  type: Directory?
  inputBinding:
    prefix: -pre
- id: in_feats
  doc: feature extraction output directory, skips feature extraction
  type: Directory?
  inputBinding:
    prefix: -feats
- id: in_load_clf
  doc: add custom classifiers (-load-clf <clf.json>)
  type: boolean?
  inputBinding:
    prefix: -load-clf
- id: in_clf
  doc: define classifier for genotyping [default:default]
  type: boolean?
  inputBinding:
    prefix: -clf
- id: in_download
  doc: download required data files
  type: boolean?
  inputBinding:
    prefix: -download
- id: in_h_gone_nine
  doc: hg19 fasta file
  type: boolean?
  inputBinding:
    prefix: -hg19
- id: in_hg_three_eight
  doc: hg38 fasta file
  type: boolean?
  inputBinding:
    prefix: -hg38
- id: in_mm_one_zero
  doc: mm10 fasta file
  type: boolean?
  inputBinding:
    prefix: -mm10
- id: in_ini
  doc: 'configuration INI file [default: $SV2_INSTALL_PATH/config/sv2.ini]'
  type: boolean?
  inputBinding:
    prefix: -ini
- id: in_log
  doc: 'log file for standard error messages [default: STDOUT]'
  type: boolean?
  inputBinding:
    prefix: -log
- id: in_tmp_dir
  doc: 'directory for temporary files [default: working directory]'
  type: boolean?
  inputBinding:
    prefix: -tmp-dir
- id: in_seed
  doc: 'random seed for preprocessing shuffling [default: 42]'
  type: boolean?
  inputBinding:
    prefix: -seed
- id: in_out
  doc: 'output prefix [default: sv2_genotypes]'
  type: boolean?
  inputBinding:
    prefix: -out
- id: in_o_dir
  doc: 'output path, location for sv2 output directories [default: working directory]'
  type: File?
  inputBinding:
    prefix: -odir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_pre
  doc: preprocessing output directory, skips preprocessing
  type: Directory?
  outputBinding:
    glob: $(inputs.in_pre)
- id: out_feats
  doc: feature extraction output directory, skips feature extraction
  type: Directory?
  outputBinding:
    glob: $(inputs.in_feats)
- id: out_o_dir
  doc: 'output path, location for sv2 output directories [default: working directory]'
  type: File?
  outputBinding:
    glob: $(inputs.in_o_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- sv2
