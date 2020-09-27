class: CommandLineTool
id: blobtools_map2cov.cwl
inputs:
- id: in_in_file
  doc: FASTA file of assembly. Headers are split at whitespaces.
  type: File
  inputBinding:
    prefix: --infile
- id: in_bam
  doc: '...          BAM file (requires pysam)'
  type: File
  inputBinding:
    prefix: --bam
- id: in_cas
  doc: '...          CAS file (requires clc_mapping_info in $PATH)'
  type: File
  inputBinding:
    prefix: --cas
- id: in_output
  doc: Output prefix
  type: string
  inputBinding:
    prefix: --output
- id: in_calculate_cov
  doc: "Legacy coverage, slower. New default is to estimate coverages\nbased on read\
    \ lengths of first 10K reads.\n"
  type: boolean
  inputBinding:
    prefix: --calculate_cov
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- blobtools
- map2cov
