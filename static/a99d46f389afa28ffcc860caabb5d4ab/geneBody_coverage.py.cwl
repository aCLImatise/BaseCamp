class: CommandLineTool
id: geneBody_coverage.py.cwl
inputs:
- id: in_input
  doc: "Input file(s) in BAM format. \"-i\" takes these input:\n1) a single BAM file.\
    \ 2) \",\" separated BAM files. 3)\ndirectory containing one or more bam files.\
    \ 4) plain\ntext file containing the path of one or more bam file\n(Each row is\
    \ a BAM file path). All BAM files should be\nsorted and indexed using samtools."
  type: File?
  inputBinding:
    prefix: --input
- id: in_ref_gene
  doc: Reference gene model in bed format. [required]
  type: string?
  inputBinding:
    prefix: --refgene
- id: in_minimum_length
  doc: "Minimum mRNA length (bp). mRNA smaller than\n\"min_mRNA_length\" will be skipped.\
    \ default=100"
  type: long?
  inputBinding:
    prefix: --minimum_length
- id: in_format
  doc: "Output file format, 'pdf', 'png' or 'jpeg'.\ndefault=pdf"
  type: File?
  inputBinding:
    prefix: --format
- id: in_out_prefix
  doc: "Prefix of output files(s). [required]\n"
  type: string?
  inputBinding:
    prefix: --out-prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_format
  doc: "Output file format, 'pdf', 'png' or 'jpeg'.\ndefault=pdf"
  type: File?
  outputBinding:
    glob: $(inputs.in_format)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rseqc:4.0.0--py38h0213d0e_0
cwlVersion: v1.1
baseCommand:
- geneBody_coverage.py
