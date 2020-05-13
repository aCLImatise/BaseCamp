class: CommandLineTool
id: OptiTypePipeline.py.cwl
inputs:
- id: input
  doc: '.fastq file(s) (fished or raw) or .bam files stored for re-use, generated
    by an earlier OptiType run. One file: single-end mode, two files: paired-end mode.'
  type: string[]
  inputBinding:
    prefix: --input
- id: rna
  doc: Use with RNA sequencing data.
  type: boolean
  inputBinding:
    prefix: --rna
- id: dna
  doc: Use with DNA sequencing data.
  type: boolean
  inputBinding:
    prefix: --dna
- id: beta
  doc: 'The beta value for for homozygosity detection (see paper). Default: 0.009.
    Handle with care.'
  type: string
  inputBinding:
    prefix: --beta
- id: enumerate
  doc: 'Number of enumerations. OptiType will output the optimal solution and the
    top N-1 suboptimal solutions in the results CSV. Default: 1'
  type: string
  inputBinding:
    prefix: --enumerate
- id: outdir
  doc: Specifies the out directory to which all files should be written.
  type: string
  inputBinding:
    prefix: --outdir
- id: prefix
  doc: Specifies prefix of output files
  type: string
  inputBinding:
    prefix: --prefix
- id: verbose
  doc: Set verbose mode on.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: config
  doc: 'Path to config file. Default: config.ini in the same directory as this script'
  type: string
  inputBinding:
    prefix: --config
outputs: []
cwlVersion: v1.1
baseCommand:
- OptiTypePipeline.py
