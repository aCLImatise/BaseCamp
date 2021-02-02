class: CommandLineTool
id: pipits_funits.cwl
inputs:
- id: in_joined_filtered_sequences
  doc: "[REQUIRED] Joined, quality filtered sequences in FASTA.\nTypically output\
    \ from pipits_prep"
  type: File
  inputBinding:
    prefix: -i
- id: in_directory_output_results
  doc: '[REQUIRED] Directory to output results'
  type: Directory
  inputBinding:
    prefix: -o
- id: in_subregion_its_extracted
  doc: "[REQUIRED] Subregion of ITS to be extracted. Must choose\neither \"ITS1\"\
    \ or \"ITS2\" E.g. -x ITS2"
  type: string
  inputBinding:
    prefix: -x
- id: in_retain_intermediate_files
  doc: "Retain intermediate files (Beware intermediate files use\nexcessive disk space!)"
  type: boolean
  inputBinding:
    prefix: -r
- id: in_verbose_mode
  doc: Verbose mode
  type: boolean
  inputBinding:
    prefix: -v
- id: in_number_of_threads
  doc: 'Number of Threads [default: 1]'
  type: long
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_directory_output_results
  doc: '[REQUIRED] Directory to output results'
  type: Directory
  outputBinding:
    glob: $(inputs.in_directory_output_results)
cwlVersion: v1.1
baseCommand:
- pipits_funits
