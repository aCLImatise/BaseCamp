class: CommandLineTool
id: ../../../FPKM_count.py.cwl
inputs:
- id: input_file
  doc: Alignment file in BAM format (SAM is not supported). [required]
  type: string
  inputBinding:
    prefix: --input-file
- id: out_prefix
  doc: Prefix of output files(s). [required]
  type: string
  inputBinding:
    prefix: --out-prefix
- id: ref_gene
  doc: Reference gene model in bed fomat. [required]
  type: string
  inputBinding:
    prefix: --refgene
- id: strand
  doc: "How read(s) were stranded during sequencing. For example: --strand='1++,1--,2+-,2-+'\
    \ means that this is a pair-end, strand-specific RNA-seq, and the strand rule\
    \ is: read1 mapped to '+' => parental gene on '+'; read1 mapped to '-' => parental\
    \ gene on '-'; read2 mapped to '+' => parental gene on '-'; read2 mapped to '-'\
    \ => parental gene on '+'.  If you are not sure about the strand rule, run 'infer_experiment.py'\
    \ default=none (Not a strand specific RNA-seq data)"
  type: string
  inputBinding:
    prefix: --strand
- id: skip_multi_hits
  doc: How to deal with multiple hit reads. Presence this option renders program to
    skip multiple hits reads.
  type: boolean
  inputBinding:
    prefix: --skip-multi-hits
- id: only_exonic
  doc: How to count total reads. Presence of this option renders program only used
    exonic (UTR exons and CDS exons) reads, otherwise use all reads.
  type: boolean
  inputBinding:
    prefix: --only-exonic
- id: mapq
  doc: Minimum mapping quality (phred scaled) for an alignment to be called "uniquely
    mapped". default=30
  type: string
  inputBinding:
    prefix: --mapq
- id: single_read
  doc: 'How to count read-pairs that only have one end mapped. 0: ignore it. 0.5:
    treat it as half fragment. 1: treat it as whole fragment. default=1'
  type: string
  inputBinding:
    prefix: --single-read
outputs: []
cwlVersion: v1.1
baseCommand:
- FPKM_count.py
