class: CommandLineTool
id: junction_annotation.py.cwl
inputs:
- id: in_input_file
  doc: Alignment file in BAM or SAM format.
  type: File?
  inputBinding:
    prefix: --input-file
- id: in_ref_gene
  doc: "Reference gene model in bed format. This file is\nbetter to be a pooled gene\
    \ model as it will be used to\nannotate splicing junctions [required]"
  type: File?
  inputBinding:
    prefix: --refgene
- id: in_out_prefix
  doc: Prefix of output files(s). [required]
  type: string?
  inputBinding:
    prefix: --out-prefix
- id: in_min_intron
  doc: Minimum intron length (bp). default=50 [optional]
  type: long?
  inputBinding:
    prefix: --min-intron
- id: in_mapq
  doc: "Minimum mapping quality (phred scaled) for an\nalignment to be considered\
    \ as \"uniquely mapped\".\ndefault=30\n"
  type: long?
  inputBinding:
    prefix: --mapq
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rseqc:4.0.0--py38h0213d0e_0
cwlVersion: v1.1
baseCommand:
- junction_annotation.py
