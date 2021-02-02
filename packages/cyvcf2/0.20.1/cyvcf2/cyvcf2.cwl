class: CommandLineTool
id: cyvcf2.cwl
inputs:
- id: in_chrom
  doc: Specify what chromosome to include.
  type: string
  inputBinding:
    prefix: --chrom
- id: in_start
  doc: Specify the start of region.
  type: long
  inputBinding:
    prefix: --start
- id: in_end
  doc: Specify the end of the region.
  type: long
  inputBinding:
    prefix: --end
- id: in_include
  doc: Specify what info field to include.
  type: string
  inputBinding:
    prefix: --include
- id: in_exclude
  doc: Specify what info field to exclude.
  type: string
  inputBinding:
    prefix: --exclude
- id: in_individual
  doc: Only print genotype call for individual.
  type: string
  inputBinding:
    prefix: --individual
- id: in_no_inds
  doc: Do not print genotypes.
  type: boolean
  inputBinding:
    prefix: --no-inds
- id: in_loglevel
  doc: "[DEBUG|INFO|WARNING|ERROR|CRITICAL]\nSet the level of log output.  [default:\n\
    INFO]"
  type: boolean
  inputBinding:
    prefix: --loglevel
- id: in_silent
  doc: Skip printing of vcf.
  type: boolean
  inputBinding:
    prefix: --silent
- id: in_vcf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_or
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cyvcf2
