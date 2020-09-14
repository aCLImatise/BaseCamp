class: CommandLineTool
id: ../../../NanoStat.cwl
inputs:
- id: in_outdir
  doc: Specify directory for output, only in combination with -n.
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_prefix
  doc: Specify an optional prefix to be used for the output file.
  type: File
  inputBinding:
    prefix: --prefix
- id: in_name
  doc: Specify a filename/path for the output, stdout is the default.
  type: File
  inputBinding:
    prefix: --name
- id: in_threads
  doc: Set the allowed number of threads to be used by the script.
  type: long
  inputBinding:
    prefix: --threads
- id: in_barcoded
  doc: Use if you want to split the summary file by barcode
  type: boolean
  inputBinding:
    prefix: --barcoded
- id: in_read_type
  doc: "Which read type to extract information about from summary. Options are 1D,\
    \ 2D,\n1D2"
  type: string
  inputBinding:
    prefix: --readtype
- id: in_fast_q
  doc: Data is in one or more (compressed) fastq file(s).
  type: File[]
  inputBinding:
    prefix: --fastq
- id: in_fast_a
  doc: Data is in one or more (compressed) fasta file(s).
  type: File[]
  inputBinding:
    prefix: --fasta
- id: in_summary
  doc: "Data is in one or more (compressed) summary file(s)generated by albacore or\n\
    guppy."
  type: File[]
  inputBinding:
    prefix: --summary
- id: in_bam
  doc: Data is in one or more sorted bam file(s).
  type: File[]
  inputBinding:
    prefix: --bam
- id: in_ub_am
  doc: Data is in one or more unmapped bam file(s).
  type: File[]
  inputBinding:
    prefix: --ubam
- id: in_cram
  doc: Data is in one or more sorted cram file(s).
  type: File[]
  inputBinding:
    prefix: --cram
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Specify directory for output, only in combination with -n.
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_prefix
  doc: Specify an optional prefix to be used for the output file.
  type: File
  outputBinding:
    glob: $(inputs.in_prefix)
- id: out_name
  doc: Specify a filename/path for the output, stdout is the default.
  type: File
  outputBinding:
    glob: $(inputs.in_name)
cwlVersion: v1.1
baseCommand:
- NanoStat