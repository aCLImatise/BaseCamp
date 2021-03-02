class: CommandLineTool
id: filter.py.cwl
inputs:
- id: in_p_one
  doc: "Single end input files or left files for paired-end\ndata (.fastq, .fq). Multiple\
    \ sample files must be\nseparated by comma or space"
  type: long[]
  inputBinding:
    prefix: --p1
- id: in_p_two
  doc: "Right files for paired-end data (.fastq, .fq).\nMultiple files must be separated\
    \ by comma or space"
  type: long[]
  inputBinding:
    prefix: --p2
- id: in_q_fmt
  doc: "Quality value format [1= Illumina 1.8, 2= Illumina\n1.3,3= Sanger]. If quality\
    \ format not provided, it\nwill automatically detect based on sequence data"
  type: double?
  inputBinding:
    prefix: --qfmt
- id: in_nb
  doc: "Filter the reads containing given % of uncalled bases\n(N)"
  type: string?
  inputBinding:
    prefix: --nb
- id: in_adp
  doc: "Trim the adapter and truncate the read sequence\n(multiple adapter sequences\
    \ must be separated by\ncomma)"
  type: string?
  inputBinding:
    prefix: --adp
- id: in_msz
  doc: Filter the reads which are lesser than minimum size
  type: long?
  inputBinding:
    prefix: --msz
- id: in_per
  doc: "Truncate the read sequence if it matches to adapter\nsequence equal or more\
    \ than given percent (0.0-1.0)\n[default=0.9]"
  type: double?
  inputBinding:
    prefix: --per
- id: in_q_thr
  doc: "Filter the read sequence if average quality of bases\nin reads is lower than\
    \ threshold (1-40) [default:20]"
  type: long?
  inputBinding:
    prefix: --qthr
- id: in_trim
  doc: "If trim option set to True, the reads with low quality\n(as defined by option\
    \ --qthr) will be trimmed instead\nof discarding [True|False] [default: False]"
  type: string?
  inputBinding:
    prefix: --trim
- id: in_ws_z
  doc: "The window size for trimming (5->3) the reads. This\noption should always\
    \ set when -trim option is defined\n[default: 5]"
  type: long?
  inputBinding:
    prefix: --wsz
- id: in_mlk
  doc: Minimum length of the reads to retain after trimming
  type: long?
  inputBinding:
    prefix: --mlk
- id: in_cpu
  doc: Number of CPU [default:2]
  type: long?
  inputBinding:
    prefix: --cpu
- id: in_of_mt
  doc: Output file format (fastq/fasta) [default:fastq]
  type: File?
  inputBinding:
    prefix: --ofmt
- id: in_no_vis
  doc: "No figures will be produced [True|False]\n[default:False]"
  type: string?
  inputBinding:
    prefix: --no-vis
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
- filter.py
