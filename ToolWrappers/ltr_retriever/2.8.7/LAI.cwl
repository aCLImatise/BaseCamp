class: CommandLineTool
id: ../../../LAI.cwl
inputs:
- id: in_genome
  doc: '[file]  The genome file that is used to generate everything.'
  type: boolean
  inputBinding:
    prefix: -genome
- id: in_intact
  doc: '[file]  A list of intact LTR-RTs generated by LTR_retriever (genome.fa.pass.list).'
  type: boolean
  inputBinding:
    prefix: -intact
- id: in_all
  doc: '[file]     RepeatMasker annotation of all LTR sequences in the genome (genome.fa.out).'
  type: File
  inputBinding:
    prefix: -all
- id: in_window
  doc: '[int]   Window size for LAI estimation. Default: 3000000 (3 Mb)'
  type: boolean
  inputBinding:
    prefix: -window
- id: in_step
  doc: "[int]     Step size for the estimation window to move forward. Default: 300000\
    \ (300 Kb)\nSet step size = window size if prefer non-overlapping outputs."
  type: boolean
  inputBinding:
    prefix: -step
- id: in_quick_estimation_faster
  doc: Quick estimation of LTR identity (much faster for large genomes, may sacrifice
    ~0.5% of accuracy).
  type: boolean
  inputBinding:
    prefix: -q
- id: in_qq
  doc: No estimation of LTR identity, only output raw LAI for within species comparison
    (very quick).
  type: boolean
  inputBinding:
    prefix: -qq
- id: in_mono
  doc: "[file]    This parameter is mainly for ployploid genomes. User provides a\
    \ list of sequence names that represent a monoploid (1x).\nLAI will calculated\
    \ only on these sequences if provided. So user can also specify sequence of interest\
    \ for LAI calculation."
  type: boolean
  inputBinding:
    prefix: -mono
- id: in_iden
  doc: '[0-100]   Mean LTR identity (%) in the monoploid (1x) genome. This parameter
    will inactivate de novo estimation (same speed to -qq).'
  type: boolean
  inputBinding:
    prefix: -iden
- id: in_to_tltr
  doc: '[0-100] Specify the total LTR sequence content (%) in the genome instead of
    estimating from the -all RepeatMasker file.'
  type: boolean
  inputBinding:
    prefix: -totLTR
- id: in_blast
  doc: '[path]   The path to the blastn program. If left unspecified, then blastn
    must be accessible via shell ENV.'
  type: boolean
  inputBinding:
    prefix: -blast
- id: in_number_run_blastn
  doc: '[number]     Number of threads to run blastn.'
  type: boolean
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_all
  doc: '[file]     RepeatMasker annotation of all LTR sequences in the genome (genome.fa.out).'
  type: File
  outputBinding:
    glob: $(inputs.in_all)
cwlVersion: v1.1
baseCommand:
- LAI
