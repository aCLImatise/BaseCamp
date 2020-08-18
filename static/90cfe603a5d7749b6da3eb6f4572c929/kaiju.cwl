class: CommandLineTool
id: ../../../kaiju.cwl
inputs:
- id: name_nodesdmp_file
  doc: Name of nodes.dmp file
  type: File
  inputBinding:
    prefix: -t
- id: name_database_file
  doc: Name of database (.fmi) file
  type: File
  inputBinding:
    prefix: -f
- id: name_containing_reads
  doc: Name of input file containing reads in FASTA or FASTQ format
  type: File
  inputBinding:
    prefix: -i
- id: name_second_input
  doc: Name of second input file for paired-end reads
  type: File
  inputBinding:
    prefix: -j
- id: name_output_file
  doc: Name of output file. If not specified, output will be printed to STDOUT
  type: File
  inputBinding:
    prefix: -o
- id: number_parallel_threads
  doc: 'Number of parallel threads for classification (default: 1)'
  type: long
  inputBinding:
    prefix: -z
- id: run_mode_greedy
  doc: 'Run mode, either "mem"  or "greedy" (default: greedy)'
  type: string
  inputBinding:
    prefix: -a
- id: number_mismatches_allowed
  doc: 'Number of mismatches allowed in Greedy mode (default: 3)'
  type: long
  inputBinding:
    prefix: -e
- id: minimum_match_length
  doc: 'Minimum match length (default: 11)'
  type: long
  inputBinding:
    prefix: -m
- id: minimum_match_score
  doc: 'Minimum match score in Greedy mode (default: 65)'
  type: long
  inputBinding:
    prefix: -s
- id: minimum_evalue_greedy
  doc: Minimum E-value in Greedy mode
  type: double
  inputBinding:
    prefix: -E
- id: enable_seg_filter
  doc: Enable SEG low complexity filter (enabled by default)
  type: boolean
  inputBinding:
    prefix: -x
- id: disable_seg_low
  doc: Disable SEG low complexity filter
  type: boolean
  inputBinding:
    prefix: -X
- id: input_sequences_protein
  doc: Input sequences are protein sequences
  type: boolean
  inputBinding:
    prefix: -p
- id: enable_verbose_output
  doc: Enable verbose output
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- kaiju
