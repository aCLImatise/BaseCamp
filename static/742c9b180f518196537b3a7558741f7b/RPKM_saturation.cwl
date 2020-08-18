class: CommandLineTool
id: ../../../RPKM_saturation.py.cwl
inputs:
- id: input_file
  doc: Alignment file in BAM or SAM format. [required]
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
- id: percentile_floor
  doc: Sampling starts from this percentile. A integer between 0 and 100. default=5
  type: string
  inputBinding:
    prefix: --percentile-floor
- id: percentile_ceiling
  doc: Sampling ends at this percentile. A integer between 0 and 100. default=100
  type: string
  inputBinding:
    prefix: --percentile-ceiling
- id: percentile_step
  doc: Sampling frequency. Smaller value means more sampling times. A integer between
    0 and 100. default=5
  type: string
  inputBinding:
    prefix: --percentile-step
- id: rp_km_cut_off
  doc: Transcripts with RPKM smaller than this number will be ignored in visualization
    plot. default=0.01
  type: string
  inputBinding:
    prefix: --rpkm-cutoff
- id: mapq
  doc: Minimum mapping quality (phred scaled) for an alignment to be called "uniquely
    mapped". default=30
  type: string
  inputBinding:
    prefix: --mapq
outputs: []
cwlVersion: v1.1
baseCommand:
- RPKM_saturation.py
