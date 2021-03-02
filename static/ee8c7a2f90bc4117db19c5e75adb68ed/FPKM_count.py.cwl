class: CommandLineTool
id: FPKM_count.py.cwl
inputs:
- id: in_input_file
  doc: "Alignment file in BAM format (SAM is not supported).\n[required]"
  type: File?
  inputBinding:
    prefix: --input-file
- id: in_out_prefix
  doc: Prefix of output files(s). [required]
  type: string?
  inputBinding:
    prefix: --out-prefix
- id: in_ref_gene
  doc: Reference gene model in bed fomat. [required]
  type: string?
  inputBinding:
    prefix: --refgene
- id: in_strand
  doc: "How read(s) were stranded during sequencing. For\nexample: --strand='1++,1--,2+-,2-+'\
    \ means that this is\na pair-end, strand-specific RNA-seq, and the strand\nrule\
    \ is: read1 mapped to '+' => parental gene on '+';\nread1 mapped to '-' => parental\
    \ gene on '-'; read2\nmapped to '+' => parental gene on '-'; read2 mapped to\n\
    '-' => parental gene on '+'.  If you are not sure\nabout the strand rule, run\
    \ 'infer_experiment.py'\ndefault=none (Not a strand specific RNA-seq data)"
  type: long?
  inputBinding:
    prefix: --strand
- id: in_skip_multi_hits
  doc: "How to deal with multiple hit reads. Presence this\noption renders program\
    \ to skip multiple hits reads."
  type: boolean?
  inputBinding:
    prefix: --skip-multi-hits
- id: in_only_exonic
  doc: "How to count total reads. Presence of this option\nrenders program only used\
    \ exonic (UTR exons and CDS\nexons) reads, otherwise use all reads."
  type: boolean?
  inputBinding:
    prefix: --only-exonic
- id: in_mapq
  doc: "Minimum mapping quality (phred scaled) for an\nalignment to be called \"uniquely\
    \ mapped\". default=30"
  type: long?
  inputBinding:
    prefix: --mapq
- id: in_single_read
  doc: "How to count read-pairs that only have one end mapped.\n0: ignore it. 0.5:\
    \ treat it as half fragment. 1: treat\nit as whole fragment. default=1\n"
  type: double?
  inputBinding:
    prefix: --single-read
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rseqc:4.0.0--py38h0213d0e_0
cwlVersion: v1.1
baseCommand:
- FPKM_count.py
