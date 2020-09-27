class: CommandLineTool
id: kaijup.cwl
inputs:
- id: in_name_database_file
  doc: Name of database file (.fmi) file
  type: File
  inputBinding:
    prefix: -f
- id: in_name_input_file
  doc: Name of input file containing reads in FASTA or FASTQ format
  type: File
  inputBinding:
    prefix: -i
- id: in_name_output_file
  doc: Name of output file. If not specified, output will be printed to STDOUT
  type: File
  inputBinding:
    prefix: -o
- id: in_number_parallel_threads
  doc: 'Number of parallel threads for classification (default: 1)'
  type: long
  inputBinding:
    prefix: -z
- id: in_run_mode_greedy
  doc: 'Run mode, either "mem"  or "greedy" (default: greedy)'
  type: string
  inputBinding:
    prefix: -a
- id: in_number_mismatches_allowed
  doc: 'Number of mismatches allowed in Greedy mode (default: 3)'
  type: long
  inputBinding:
    prefix: -e
- id: in_minimum_match_length
  doc: 'Minimum match length (default: 11)'
  type: long
  inputBinding:
    prefix: -m
- id: in_minimum_match_score
  doc: 'Minimum match score in Greedy mode (default: 65)'
  type: long
  inputBinding:
    prefix: -s
- id: in_minimum_evalue_greedy
  doc: Minimum E-value in Greedy mode
  type: double
  inputBinding:
    prefix: -E
- id: in_enable_seg_low
  doc: Enable SEG low complexity filter (enabled by default)
  type: boolean
  inputBinding:
    prefix: -x
- id: in_disable_seg_low
  doc: Disable SEG low complexity filter
  type: boolean
  inputBinding:
    prefix: -X
- id: in_enable_verbose_output
  doc: Enable verbose output.
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_output_file
  doc: Name of output file. If not specified, output will be printed to STDOUT
  type: File
  outputBinding:
    glob: $(inputs.in_name_output_file)
cwlVersion: v1.1
baseCommand:
- kaijup
