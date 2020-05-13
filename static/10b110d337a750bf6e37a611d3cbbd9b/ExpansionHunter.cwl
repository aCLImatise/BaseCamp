class: CommandLineTool
id: ExpansionHunter.cwl
inputs:
- id: v
  doc: '[ --version ]                      Print version number'
  type: boolean
  inputBinding:
    prefix: -v
- id: reads
  doc: BAM/CRAM file with aligned reads
  type: string
  inputBinding:
    prefix: --reads
- id: reference
  doc: FASTA file with reference genome
  type: string
  inputBinding:
    prefix: --reference
- id: variant_catalog
  doc: JSON file with variants to genotype
  type: string
  inputBinding:
    prefix: --variant-catalog
- id: output_prefix
  doc: Prefix for the output files
  type: string
  inputBinding:
    prefix: --output-prefix
- id: region_extension_length
  doc: (=1000) How far from on/off-target regions to  search for informative reads
  type: string
  inputBinding:
    prefix: --region-extension-length
- id: sex
  doc: (=female)                   Sex of the sample; must be either male  or female
  type: string
  inputBinding:
    prefix: --sex
- id: log_level
  doc: (=info)               trace, debug, info, warn, or error
  type: string
  inputBinding:
    prefix: --log-level
- id: a
  doc: '[ --aligner ] arg (=dag-aligner)   Specify which aligner to use  (dag-aligner
    or path-aligner)'
  type: boolean
  inputBinding:
    prefix: -a
- id: m
  doc: '[ --analysis-mode ] arg (=seeking) Specify which analysis workflow to use  (seeking
    or streaming)'
  type: boolean
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- ExpansionHunter
