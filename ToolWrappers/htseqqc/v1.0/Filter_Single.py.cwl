class: CommandLineTool
id: Filter_Single.py.cwl
inputs:
- id: in_p_one
  doc: Input file (.fastq, .fq)
  type: long?
  inputBinding:
    prefix: --p1
- id: in_msz
  doc: filter the reads which are lesser than minimum size
  type: long?
  inputBinding:
    prefix: --msz
- id: in_q_fmt
  doc: "Quality value format\n1= Illumina 1.8\n2= Illumina 1.3\n3= Sanger"
  type: long?
  inputBinding:
    prefix: --qfmt
- id: in_nb
  doc: filter the reads containing given % of N
  type: long?
  inputBinding:
    prefix: --nb
- id: in_adp
  doc: Trim the adapter sequence and truncate the read sequence [adapter sequence]
  type: string?
  inputBinding:
    prefix: --adp
- id: in_per
  doc: Truncate the read sequence if it matches to adapter sequence equal or more
    than given percent (0.0-1.0) [default=0.9]
  type: double?
  inputBinding:
    prefix: --per
- id: in_q_thr
  doc: Filter the read sequence if average quality of bases in reads is lower than
    threshold (1-40) [default:20]
  type: long?
  inputBinding:
    prefix: --qthr
- id: in_trim
  doc: 'If trim option set to true, the reads with low quality (as defined by option
    --qthr) will be trimmed instead of discarding [default: False]'
  type: boolean?
  inputBinding:
    prefix: --trim
- id: in_ws_z
  doc: "The window size for trimming (5'->3') the reads. This option should always\
    \ set when -trim option is defined.\nThe recommended windowsize for best result\
    \ should be between 2-5 [default:5]"
  type: long?
  inputBinding:
    prefix: --wsz
- id: in_mlk
  doc: The minimum length of the reads to retain after trimming
  type: long?
  inputBinding:
    prefix: --mlk
- id: in_cpu
  doc: Number of CPU [default:2]
  type: boolean?
  inputBinding:
    prefix: --cpu
- id: in_of_mt
  doc: Output file format (fastq/fasta) [default:fastq]
  type: File?
  inputBinding:
    prefix: --ofmt
- id: in_no_vis
  doc: No figures will be produced [yes|no] [default:no]
  type: boolean?
  inputBinding:
    prefix: --no-vis
- id: in_filter_s
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -filter-s
- id: in_s_rap
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_of_mt
  doc: Output file format (fastq/fasta) [default:fastq]
  type: File?
  outputBinding:
    glob: $(inputs.in_of_mt)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/htseqqc:v1.0--pyh5bfb8f1_0
cwlVersion: v1.1
baseCommand:
- Filter_Single.py
