class: CommandLineTool
id: kaiju.cwl
inputs:
- id: t
  doc: Name of nodes.dmp file
  type: File
  inputBinding:
    prefix: -t
- id: f
  doc: Name of database (.fmi) file
  type: File
  inputBinding:
    prefix: -f
- id: i
  doc: Name of input file containing reads in FASTA or FASTQ format
  type: File
  inputBinding:
    prefix: -i
- id: j
  doc: Name of second input file for paired-end reads
  type: File
  inputBinding:
    prefix: -j
- id: o
  doc: Name of output file. If not specified, output will be printed to STDOUT
  type: File
  inputBinding:
    prefix: -o
- id: z
  doc: 'Number of parallel threads for classification (default: 1)'
  type: long
  inputBinding:
    prefix: -z
- id: a
  doc: 'Run mode, either "mem"  or "greedy" (default: greedy)'
  type: string
  inputBinding:
    prefix: -a
- id: e
  doc: 'Number of mismatches allowed in Greedy mode (default: 3)'
  type: long
  inputBinding:
    prefix: -e
- id: m
  doc: 'Minimum match length (default: 11)'
  type: long
  inputBinding:
    prefix: -m
- id: s
  doc: 'Minimum match score in Greedy mode (default: 65)'
  type: long
  inputBinding:
    prefix: -s
- id: e
  doc: Minimum E-value in Greedy mode
  type: double
  inputBinding:
    prefix: -E
- id: x
  doc: Enable SEG low complexity filter (enabled by default)
  type: boolean
  inputBinding:
    prefix: -x
- id: x
  doc: Disable SEG low complexity filter
  type: boolean
  inputBinding:
    prefix: -X
- id: p
  doc: Input sequences are protein sequences
  type: boolean
  inputBinding:
    prefix: -p
- id: v
  doc: Enable verbose output
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- kaiju
