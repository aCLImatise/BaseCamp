class: CommandLineTool
id: tin.py.cwl
inputs:
- id: in_input
  doc: "Input BAM file(s). \"-i\" takes these input: 1) a single\nBAM file. 2) \"\
    ,\" separated BAM files (no spaces\nallowed). 3) directory containing one or more\
    \ bam\nfiles. 4) plain text file containing the path of one\nor more bam files\
    \ (Each row is a BAM file path). All\nBAM files should be sorted and indexed using\
    \ samtools.\n[required]"
  type: File?
  inputBinding:
    prefix: --input
- id: in_ref_gene
  doc: "Reference gene model in BED format. Must be strandard\n12-column BED file.\
    \ [required]"
  type: File?
  inputBinding:
    prefix: --refgene
- id: in_min_cov
  doc: "Minimum number of read mapped to a transcript.\ndefault=10"
  type: long?
  inputBinding:
    prefix: --minCov
- id: in_sample_size
  doc: "Number of equal-spaced nucleotide positions picked\nfrom mRNA. Note: if this\
    \ number is larger than the\nlength of mRNA (L), it will be halved until it's\n\
    smaller than L. default=100"
  type: long?
  inputBinding:
    prefix: --sample-size
- id: in_subtract_background
  doc: "Subtract background noise (estimated from intronic\nreads). Only use this\
    \ option if there are substantial\nintronic reads.\n"
  type: boolean?
  inputBinding:
    prefix: --subtract-background
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rseqc:4.0.0--py38h0213d0e_0
cwlVersion: v1.1
baseCommand:
- tin.py
