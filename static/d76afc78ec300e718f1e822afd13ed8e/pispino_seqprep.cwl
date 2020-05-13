class: CommandLineTool
id: pispino_seqprep.cwl
inputs:
- id: i
  doc: '[REQUIRED] Directory with raw sequences in gzipped FASTQ'
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: '[REQUIRED] Directory to output results'
  type: string
  inputBinding:
    prefix: -o
- id: l
  doc: Tap separated file with three columns for sample ids, forward-read filename
    and reverse-read filename. Only the files listed in this file will be processed.
  type: File
  inputBinding:
    prefix: -l
- id: fast_x_q
  doc: 'FASTX FASTQ_QUALITY_FILTER - Minimum quality score to keep [default: 30]'
  type: long
  inputBinding:
    prefix: --FASTX-q
- id: fast_x_p
  doc: 'FASTX FASTQ_QUALITY_FILTER - Minimum percent of bases that must have q quality
    [default: 80]'
  type: long
  inputBinding:
    prefix: --FASTX-p
- id: fast_x_n
  doc: 'FASTX FASTQ_TO_FASTA - remove sequences with unknown (N) nucleotides [default:
    false]'
  type: boolean
  inputBinding:
    prefix: --FASTX-n
- id: b
  doc: 'Base PHRED quality score [default: 33]'
  type: long
  inputBinding:
    prefix: -b
- id: joiner_method
  doc: 'Joiner method: "PEAR" and "FASTQJOIN" [default: VSEARCH]'
  type: string
  inputBinding:
    prefix: --joiner_method
- id: pear_options
  doc: '= <STR> User customisable parameter: You can add/change PEAR parameters. Please
    use "--PEAR_options=" followed by custom parameters wrapped around them. E.g.
    --PEAR_options="-v 8 -t 2". Note that if you put two same parameters such as "-v
    8 -v 15", PEAR will use the later.'
  type: boolean
  inputBinding:
    prefix: --PEAR_options
- id: r
  doc: Retain intermediate files (Beware intermediate files use excessive disk space!)
  type: boolean
  inputBinding:
    prefix: -r
- id: v
  doc: Verbose mode
  type: boolean
  inputBinding:
    prefix: -v
- id: t
  doc: 'Number of Threads [default: 1]'
  type: long
  inputBinding:
    prefix: -t
- id: forward_reads_only
  doc: Do NOT join paired-end sequences, but just use the forward reads.
  type: boolean
  inputBinding:
    prefix: --forwardreadsonly
outputs: []
cwlVersion: v1.1
baseCommand:
- pispino_seqprep
