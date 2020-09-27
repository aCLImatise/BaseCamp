class: CommandLineTool
id: svtools_lsort.cwl
inputs:
- id: in_vcf_list
  doc: "file containing a line-delimited list of VCF files to\ncombine and sort"
  type: File
  inputBinding:
    prefix: --vcf-list
- id: in_include_reference
  doc: "whether or not to include homozygous reference or\nmissing calls in the output."
  type: boolean
  inputBinding:
    prefix: --include-reference
- id: in_tempdir
  doc: temporary directory
  type: File
  inputBinding:
    prefix: --tempdir
- id: in_batch_size
  doc: number of files to sort in batch
  type: long
  inputBinding:
    prefix: --batchsize
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- svtools
- lsort
