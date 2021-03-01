class: CommandLineTool
id: RPKM_saturation.py.cwl
inputs:
- id: in_input_file
  doc: Alignment file in BAM or SAM format. [required]
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
- id: in_percentile_floor
  doc: "Sampling starts from this percentile. A integer\nbetween 0 and 100. default=5"
  type: long?
  inputBinding:
    prefix: --percentile-floor
- id: in_percentile_ceiling
  doc: "Sampling ends at this percentile. A integer between 0\nand 100. default=100"
  type: long?
  inputBinding:
    prefix: --percentile-ceiling
- id: in_percentile_step
  doc: "Sampling frequency. Smaller value means more sampling\ntimes. A integer between\
    \ 0 and 100. default=5"
  type: long?
  inputBinding:
    prefix: --percentile-step
- id: in_rp_km_cut_off
  doc: "Transcripts with RPKM smaller than this number will be\nignored in visualization\
    \ plot. default=0.01"
  type: long?
  inputBinding:
    prefix: --rpkm-cutoff
- id: in_mapq
  doc: "Minimum mapping quality (phred scaled) for an\nalignment to be called \"uniquely\
    \ mapped\". default=30\n"
  type: long?
  inputBinding:
    prefix: --mapq
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- RPKM_saturation.py
