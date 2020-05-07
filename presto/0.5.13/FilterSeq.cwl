class: CommandLineTool
id: FilterSeq.py_trimqual.cwl
inputs:
- id: s
  doc: 'A list of FASTA/FASTQ files containing sequences to process. (default: None)'
  type: string[]
  inputBinding:
    prefix: -s
- id: o
  doc: 'Explicit output file name(s). Note, this argument cannot be used with the
    --failed, --outdir, or --outname arguments. If unspecified, then the output filename
    will be based on the input filename(s). (default: None)'
  type: string[]
  inputBinding:
    prefix: -o
- id: outdir
  doc: 'Specify to changes the output directory to the location specified. The input
    file directory is used if this is not specified. (default: None)'
  type: string
  inputBinding:
    prefix: --outdir
- id: out_name
  doc: 'Changes the prefix of the successfully processed output file to the string
    specified. May not be specified with multiple input files. (default: None)'
  type: string
  inputBinding:
    prefix: --outname
- id: log
  doc: 'Specify to write verbose logging to a file. May not be specified with multiple
    input files. (default: None)'
  type: string
  inputBinding:
    prefix: --log
- id: failed
  doc: 'If specified create files containing records that fail processing. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --failed
- id: fast_a
  doc: 'Specify to force output as FASTA rather than FASTQ. (default: None)'
  type: boolean
  inputBinding:
    prefix: --fasta
- id: nproc
  doc: 'The number of simultaneous computational processes to execute (CPU cores to
    utilized). (default: 8)'
  type: string
  inputBinding:
    prefix: --nproc
- id: q
  doc: 'Quality score threshold. (default: 20)'
  type: long
  inputBinding:
    prefix: -q
- id: win
  doc: 'Nucleotide window size for moving average calculation. (default: 10)'
  type: string
  inputBinding:
    prefix: --win
- id: reverse
  doc: 'Specify to trim the head of the sequence rather than the tail. (default: False)'
  type: boolean
  inputBinding:
    prefix: --reverse
outputs: []
cwlVersion: v1.1
baseCommand:
- FilterSeq.py
- trimqual
