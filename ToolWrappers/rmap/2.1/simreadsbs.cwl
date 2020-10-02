class: CommandLineTool
id: simreadsbs.cwl
inputs:
- id: in_output
  doc: 'Name of output file (default: stdout)'
  type: File
  inputBinding:
    prefix: -output
- id: in_reads
  doc: number of reads to simulate
  type: boolean
  inputBinding:
    prefix: -reads
- id: in_width
  doc: width of reads to simulate
  type: boolean
  inputBinding:
    prefix: -width
- id: in_err
  doc: maximum number of simulated sequencing errors
  type: boolean
  inputBinding:
    prefix: -err
- id: in_verbose
  doc: print more run info
  type: boolean
  inputBinding:
    prefix: -verbose
- id: in_fast_q
  doc: write FASTQ format reads
  type: boolean
  inputBinding:
    prefix: -fastq
- id: in_prob
  doc: prb output file
  type: File
  inputBinding:
    prefix: -prob
- id: in_meth
  doc: rate of CpG methylation
  type: boolean
  inputBinding:
    prefix: -meth
- id: in_bs
  doc: rate of bisulfite conversion
  type: boolean
  inputBinding:
    prefix: -bs
- id: in_ag
  doc: generate A/G wildcard reads
  type: boolean
  inputBinding:
    prefix: -ag
- id: in_seed
  doc: random number seed
  type: boolean
  inputBinding:
    prefix: -seed
- id: in_about
  doc: print about message
  type: boolean
  inputBinding:
    prefix: -about
- id: in_fast_a_chrom_files
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'Name of output file (default: stdout)'
  type: File
  outputBinding:
    glob: $(inputs.in_output)
- id: out_prob
  doc: prb output file
  type: File
  outputBinding:
    glob: $(inputs.in_prob)
cwlVersion: v1.1
baseCommand:
- simreadsbs
