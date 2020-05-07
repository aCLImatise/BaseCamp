class: CommandLineTool
id: run_roh.pl.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: af_an_not_s
  doc: Allele frequency annotations [1000GP-AFs/AFs.tab.gz]
  type: File
  inputBinding:
    prefix: --af-annots
- id: in_dir
  doc: Input directory with VCF files
  type: string
  inputBinding:
    prefix: --indir
- id: include
  doc: Select sites for which the expression is true
  type: string
  inputBinding:
    prefix: --include
- id: exclude
  doc: Exclude sites for which the epxression is true
  type: string
  inputBinding:
    prefix: --exclude
- id: min_length
  doc: Filter input regions shorter than this [1e6]
  type: string
  inputBinding:
    prefix: --min-length
- id: gen_map
  doc: Directory with genetic map in IMPUTE2 format (optional)
  type: string
  inputBinding:
    prefix: --genmap
- id: rec_rate
  doc: constant recombination rate per bp (optional)
  type: double
  inputBinding:
    prefix: --rec-rate
- id: min_markers
  doc: Filter input regions with fewer marker than this [100]
  type: string
  inputBinding:
    prefix: --min-markers
- id: outdir
  doc: Output directory
  type: string
  inputBinding:
    prefix: --outdir
- id: min_qual
  doc: Filter input regions with quality smaller than this [10]
  type: string
  inputBinding:
    prefix: --min-qual
- id: roh_args
  doc: Extra arguments to pass to bcftools roh
  type: string
  inputBinding:
    prefix: --roh-args
- id: silent
  doc: Quiet output, do not print commands
  type: boolean
  inputBinding:
    prefix: --silent
outputs: []
cwlVersion: v1.1
baseCommand:
- run-roh.pl
