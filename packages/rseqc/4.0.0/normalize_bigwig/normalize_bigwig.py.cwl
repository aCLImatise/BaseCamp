class: CommandLineTool
id: normalize_bigwig.py.cwl
inputs:
- id: in_bw_file
  doc: Input BigWig file. [required]
  type: File?
  inputBinding:
    prefix: --bwfile
- id: in_output
  doc: Output wig file. [required]
  type: File?
  inputBinding:
    prefix: --output
- id: in_wig_sum
  doc: "Specified wigsum. 100000000 equals to coverage of 1\nmillion 100nt reads.\
    \ default=100000000  [optional]"
  type: long?
  inputBinding:
    prefix: --wigsum
- id: in_ref_gene
  doc: Reference gene model in bed format. [optional]
  type: string?
  inputBinding:
    prefix: --refgene
- id: in_chunk
  doc: "Chromosome chunk size. Each chomosome will be cut into\nsamll chunks of this\
    \ size. Decrease chunk size will\nsave more RAM. default=500000 (bp) [optional]"
  type: long?
  inputBinding:
    prefix: --chunk
- id: in_format
  doc: "Output format. either \"wig\" or \"bgr\". \"bgr\" save disk\nspace but make\
    \ program slower. default=bgr\n"
  type: string?
  inputBinding:
    prefix: --format
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output wig file. [required]
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rseqc:4.0.0--py38h0213d0e_0
cwlVersion: v1.1
baseCommand:
- normalize_bigwig.py
