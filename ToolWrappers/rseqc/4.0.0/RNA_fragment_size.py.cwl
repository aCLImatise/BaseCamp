class: CommandLineTool
id: RNA_fragment_size.py.cwl
inputs:
- id: in_input
  doc: Input BAM file
  type: File?
  inputBinding:
    prefix: --input
- id: in_ref_gene
  doc: "Reference gene model in BED format. Must be strandard\n12-column BED file.\
    \ [required]"
  type: File?
  inputBinding:
    prefix: --refgene
- id: in_mapq
  doc: "Minimum mapping quality (phred scaled) for an\nalignment to be called \"uniquely\
    \ mapped\". default=30"
  type: long?
  inputBinding:
    prefix: --mapq
- id: in_frag_num
  doc: "Minimum number of fragment. default=3\n"
  type: long?
  inputBinding:
    prefix: --frag-num
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rseqc:4.0.0--py38h0213d0e_0
cwlVersion: v1.1
baseCommand:
- RNA_fragment_size.py
