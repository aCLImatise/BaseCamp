class: CommandLineTool
id: cyvcf2.cwl
inputs:
- id: chrom
  doc: Specify what chromosome to include.
  type: string
  inputBinding:
    prefix: --chrom
- id: start
  doc: Specify the start of region.
  type: long
  inputBinding:
    prefix: --start
- id: end
  doc: Specify the end of the region.
  type: long
  inputBinding:
    prefix: --end
- id: include
  doc: Specify what info field to include.
  type: string
  inputBinding:
    prefix: --include
- id: exclude
  doc: Specify what info field to exclude.
  type: string
  inputBinding:
    prefix: --exclude
- id: individual
  doc: Only print genotype call for individual.
  type: string
  inputBinding:
    prefix: --individual
- id: no_inds
  doc: Do not print genotypes.
  type: boolean
  inputBinding:
    prefix: --no-inds
- id: loglevel
  doc: '[DEBUG|INFO|WARNING|ERROR|CRITICAL] Set the level of log output.  [default:
    INFO]'
  type: boolean
  inputBinding:
    prefix: --loglevel
- id: silent
  doc: Skip printing of vcf.
  type: boolean
  inputBinding:
    prefix: --silent
outputs: []
cwlVersion: v1.1
baseCommand:
- cyvcf2
