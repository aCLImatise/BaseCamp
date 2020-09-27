class: CommandLineTool
id: dicey_chop.cwl
inputs:
- id: in_f
  doc: '[ --fq1 ] arg (=read1)       read1 output prefix'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_g
  doc: '[ --fq2 ] arg (=read2)       read2 output prefix'
  type: boolean
  inputBinding:
    prefix: -g
- id: in_arg_read_length
  doc: '[ --length ] arg (=101)      read length'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_arg_insert_size
  doc: '[ --insertsize ] arg (=501)  insert size'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_generate_singleend_data
  doc: '[ --se ]                     generate single-end data'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_generate_reads_chromosome
  doc: '[ --chromosome ]             generate reads by chromosome'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_reverse_complement_reads
  doc: '[ --revcomp ]                reverse complement all reads'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_danio_rerio_dot_fado_tgz
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dicey
- chop
