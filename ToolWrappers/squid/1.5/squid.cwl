class: CommandLineTool
id: ../../../squid.cwl
inputs:
- id: in_bwa
  doc: If input BAM is generated by BWA or SpeedSeq aligner (default assuming STAR
    aligner)
  type: boolean
  inputBinding:
    prefix: --bwa
- id: in_string_chimeric_alignment
  doc: string  Chimeric BAM alignment (Required if using STAR aligner)
  type: boolean
  inputBinding:
    prefix: -c
- id: in_string_fasta_file
  doc: string  Genome FASTA file
  type: boolean
  inputBinding:
    prefix: -f
- id: in_pt
  doc: 'bool    Phred type: 0 for Phred33, 1 for Phred64 (0)'
  type: boolean
  inputBinding:
    prefix: -pt
- id: in_pl
  doc: int     Maximum Length of low Phred score to filter alignment (10)
  type: boolean
  inputBinding:
    prefix: -pl
- id: in_pm
  doc: int     Low Phred score threshold (4)
  type: boolean
  inputBinding:
    prefix: -pm
- id: in_mq
  doc: int     Mapping quality to filter alignment (1)
  type: boolean
  inputBinding:
    prefix: -mq
- id: in_dp
  doc: int     Maximum distance of aligning positions for concordant alignment (50000)
  type: boolean
  inputBinding:
    prefix: -dp
- id: in_di
  doc: int     Maximum distance of segment indexes for concordant alignment (20)
  type: boolean
  inputBinding:
    prefix: -di
- id: in_int_minimum_edge
  doc: int     Minimum edge weight (5)
  type: boolean
  inputBinding:
    prefix: -w
- id: in_double_discordant_edge
  doc: double  Discordant edge ratio multiplier / normal tumor cell ratio (8)
  type: boolean
  inputBinding:
    prefix: -r
- id: in_int_max_allowed
  doc: int     Max allowed degree (5)
  type: boolean
  inputBinding:
    prefix: -a
- id: in_bool_output_gragh
  doc: bool    Output gragh file (0)
  type: boolean
  inputBinding:
    prefix: -G
- id: in_co
  doc: bool    Output ordering of connected components (0)
  type: boolean
  inputBinding:
    prefix: -CO
- id: in_to
  doc: bool    Output ordering of all segments (0)
  type: boolean
  inputBinding:
    prefix: -TO
- id: in_rg
  doc: bool    Output rearranged genome sequence (0)
  type: boolean
  inputBinding:
    prefix: -RG
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- squid