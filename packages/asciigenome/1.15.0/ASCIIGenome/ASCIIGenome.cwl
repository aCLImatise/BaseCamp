class: CommandLineTool
id: ASCIIGenome.cwl
inputs:
- id: in_batch_file
  doc: "Bed or gff file  of  regions  to process in batch.\nUse - to read from stdin.\n\
    ASCIIGenome will iterate  through  the  regions in\nthis file"
  type: File?
  inputBinding:
    prefix: --batchFile
- id: in_region
  doc: "Go to region. Format  1-based as 'chrom:start-end'\nor 'chrom:start' or 'chrom'.\n\
    E.g. chr1:1-1000"
  type: long?
  inputBinding:
    prefix: --region
- id: in_fast_a
  doc: "Optional reference fasta file.  If  given, must be\nindexed, e.g. with\nsamtools\
    \ faidx ref.fa"
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_exec
  doc: "Commands to be executed  at  the  prompt. Either a\nfile with one command\
    \ per line\na single string of  commands,  e.g.  'goto chr1 &&\nnext && seqRegex\
    \ ACTG'"
  type: File?
  inputBinding:
    prefix: --exec
- id: in_no_format
  doc: "Do  not  format  output   with   non  ascii  chars\n(colour, bold, etc.) (default:\
    \ false)"
  type: boolean?
  inputBinding:
    prefix: --noFormat
- id: in_noninteractive
  doc: "Non interactive mode: Exit  after having processed\ncmd line args (default:\
    \ false)"
  type: boolean?
  inputBinding:
    prefix: --nonInteractive
- id: in_config
  doc: "Source of  configuration  settings.  It  can  be a\nlocal file or a tag matching\
    \ a\nbuilt-in     configuration:      'black_on_white',\n'white_on_black', 'metal'.\
    \ If null,\nfirst try to  read  configuration  from  file '~/.\nasciigenome_config'.\
    \ If this\nfile  is  missing  use  a  built-in  setting.  For\nexamples of configuration\
    \ files\nsee                                https://github.\ncom/dariober/ASCIIGenome/tree/master/src/main/resources/config\n\
    (default: null)"
  type: File?
  inputBinding:
    prefix: --config
- id: in_show_mem
  doc: "Show memory usage.  Typically  used  for debugging\nonly (default: false)"
  type: boolean?
  inputBinding:
    prefix: --showMem
- id: in_showtime
  doc: "Show time  elapsed  to  process  tracks. Typically\nused for debugging only\
    \ (default: false)"
  type: boolean?
  inputBinding:
    prefix: --showTime
- id: in_debug
  doc: "Set debugging mode.  0:  off;  1:  print exception\nstack traces; 2: print\
    \ stack traces\nand exit. (default: 0)"
  type: string?
  inputBinding:
    prefix: --debug
- id: in_input
  doc: "Input  files  to  be  displayed:  bam,  bed,  gtf,\nbigwig, bedgraph, etc"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ASCIIGenome
