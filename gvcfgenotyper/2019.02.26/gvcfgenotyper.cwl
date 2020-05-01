#!/usr/bin/env cwl-runner

baseCommand:
- gvcfgenotyper
class: CommandLineTool
cwlVersion: v1.0
id: gvcfgenotyper
inputs:
- doc: <file>          plain text list of gvcfs to merge
  id: list
  inputBinding:
    prefix: --list
  type: boolean
- doc: <file>          reference sequence
  id: fast_a_ref
  inputBinding:
    prefix: --fasta-ref
  type: boolean
- doc: <file>          output file name [stdout]
  id: output_file
  inputBinding:
    prefix: --output-file
  type: boolean
- doc: <file>          logging information
  id: log_file
  inputBinding:
    prefix: --log-file
  type: boolean
- doc: '<b|u|z|v>       b: compressed BCF, u: uncompressed BCF, z: compressed VCF,
    v: uncompressed VCF [v]'
  id: output_type
  inputBinding:
    prefix: --output-type
  type: boolean
- doc: <region>        region to genotype eg. chr1 or chr20:5000000-6000000
  id: region
  inputBinding:
    prefix: --region
  type: boolean
- doc: INT             maximum number of alleles [50]
  id: max_alleles
  inputBinding:
    prefix: --max-alleles
  type: boolean
