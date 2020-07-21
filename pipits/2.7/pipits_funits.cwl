class: CommandLineTool
id: ../../../pipits_funits.cwl
inputs:
- id: joined_filtered_sequences
  doc: '[REQUIRED] Joined, quality filtered sequences in FASTA. Typically output from
    pipits_prep'
  type: File
  inputBinding:
    prefix: -i
- id: directory_output_results
  doc: '[REQUIRED] Directory to output results'
  type: string
  inputBinding:
    prefix: -o
- id: subregion_its_extracted
  doc: '[REQUIRED] Subregion of ITS to be extracted. Must choose either "ITS1" or
    "ITS2" E.g. -x ITS2'
  type: string
  inputBinding:
    prefix: -x
- id: retain_intermediate_files
  doc: Retain intermediate files (Beware intermediate files use excessive disk space!)
  type: boolean
  inputBinding:
    prefix: -r
- id: verbose_mode
  doc: Verbose mode
  type: boolean
  inputBinding:
    prefix: -v
- id: number_of_threads
  doc: 'Number of Threads [default: 1]'
  type: long
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- pipits_funits
