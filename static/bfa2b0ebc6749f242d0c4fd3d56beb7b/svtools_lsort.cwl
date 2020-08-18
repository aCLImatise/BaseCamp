class: CommandLineTool
id: ../../../svtools_lsort.cwl
inputs:
- id: vcf_list
  doc: file containing a line-delimited list of VCF files to combine and sort
  type: File
  inputBinding:
    prefix: --vcf-list
- id: include_reference
  doc: whether or not to include homozygous reference or missing calls in the output.
  type: boolean
  inputBinding:
    prefix: --include-reference
- id: tempdir
  doc: temporary directory
  type: Directory
  inputBinding:
    prefix: --tempdir
- id: batch_size
  doc: number of files to sort in batch
  type: long
  inputBinding:
    prefix: --batchsize
outputs: []
cwlVersion: v1.1
baseCommand:
- svtools
- lsort
