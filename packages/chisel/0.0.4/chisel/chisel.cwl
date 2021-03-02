class: CommandLineTool
id: chisel.cwl
inputs:
- id: in_run_dir
  doc: 'Running directory (default: current directory)'
  type: Directory?
  inputBinding:
    prefix: --rundir
- id: in_tumor
  doc: Barcoded single-cell BAM file
  type: File?
  inputBinding:
    prefix: --tumor
- id: in_normal
  doc: Matched-normal BAM file
  type: File?
  inputBinding:
    prefix: --normal
- id: in_reference
  doc: Reference genome
  type: string?
  inputBinding:
    prefix: --reference
- id: in_list_phased
  doc: "Phased SNPs file (lines of heterozygous germline SNPs\nmust contain either\
    \ 0|1 or 1|0)"
  type: File?
  inputBinding:
    prefix: --listphased
- id: in_size
  doc: Bin size, with or without "kb" or "Mb"
  type: long?
  inputBinding:
    prefix: --size
- id: in_block_size
  doc: "Size of the haplotype blocks (default: 50kb, use 0 to\ndisable)"
  type: long?
  inputBinding:
    prefix: --blocksize
- id: in_chromosomes
  doc: "Space-separeted list of chromosomes between apices\n(default: \"chr1 chr2\
    \ chr3 chr4 chr5 chr6 chr7 chr8\nchr9 chr10 chr11 chr12 chr13 chr14 chr15 chr16\
    \ chr17\nchr18 chr19 chr20 chr21 chr22\")"
  type: long?
  inputBinding:
    prefix: --chromosomes
- id: in_min_reads
  doc: "Minimum number total reads to select cells (default:\n100000)"
  type: long?
  inputBinding:
    prefix: --minreads
- id: in_max_ploidy
  doc: "Maximum total copy number to consider for balanced\ncluster (default: 4, corresponding\
    \ to a WGD)"
  type: long?
  inputBinding:
    prefix: --maxploidy
- id: in_upper_k
  doc: "Maximum number of bin clusters (default: 100, use 0 to\nconsider maximum number\
    \ of clusters)"
  type: long?
  inputBinding:
    prefix: --upperk
- id: in_bcf_tools
  doc: "Path to the directory to \"bcftools\" executable,\nrequired in default mode\
    \ (default: bcftools is\ndirectly called as it is in user $PATH)"
  type: File?
  inputBinding:
    prefix: --bcftools
- id: in_sam_tools
  doc: "Path to the directory to \"samtools\" executable,\nrequired in default mode\
    \ (default: samtools is\ndirectly called as it is in user $PATH)"
  type: File?
  inputBinding:
    prefix: --samtools
- id: in_seed
  doc: 'Random seed for replication (default: None)'
  type: string?
  inputBinding:
    prefix: --seed
- id: in_jobs
  doc: "Number of parallele jobs to use (default: equal to\nnumber of available processors)\n"
  type: long?
  inputBinding:
    prefix: --jobs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- chisel
