class: CommandLineTool
id: gvcfgenotyper.cwl
inputs:
- id: list
  doc: <file>          plain text list of gvcfs to merge
  type: boolean
  inputBinding:
    prefix: --list
- id: fast_a_ref
  doc: <file>          reference sequence
  type: boolean
  inputBinding:
    prefix: --fasta-ref
- id: output_file
  doc: <file>          output file name [stdout]
  type: boolean
  inputBinding:
    prefix: --output-file
- id: log_file
  doc: <file>          logging information
  type: boolean
  inputBinding:
    prefix: --log-file
- id: output_type
  doc: '<b|u|z|v>       b: compressed BCF, u: uncompressed BCF, z: compressed VCF,
    v: uncompressed VCF [v]'
  type: boolean
  inputBinding:
    prefix: --output-type
- id: region
  doc: <region>        region to genotype eg. chr1 or chr20:5000000-6000000
  type: boolean
  inputBinding:
    prefix: --region
- id: max_alleles
  doc: INT             maximum number of alleles [50]
  type: boolean
  inputBinding:
    prefix: --max-alleles
outputs: []
cwlVersion: v1.1
baseCommand:
- gvcfgenotyper
