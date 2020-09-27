class: CommandLineTool
id: compare_reads.cwl
inputs:
- id: in_file_containing_files
  doc: ": A file containing the list of files to index (comma separated) - MANDATORY\n\
    Each line of the file corresponds to a set of files (comma separated)"
  type: File
  inputBinding:
    prefix: -i
- id: in_file_containing_file
  doc: ": A file containing the list of file sets to search - MANDATORY\nEach line\
    \ of the file corresponds to a set of files (comma separated)"
  type: File
  inputBinding:
    prefix: -s
- id: in_absolute_path_log
  doc: '</.../>: ABSOLUTE path to log folder'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_absolute_path_output
  doc: '</.../>: ABSOLUTE path to output folder'
  type: File
  inputBinding:
    prefix: -o
- id: in_size_kmers_value
  doc: ': Size of k-mers (value of k). [default=32]'
  type: long
  inputBinding:
    prefix: -k
- id: in_number_shared_kmers
  doc: ': Number of shared k-mers. [default=2]'
  type: long
  inputBinding:
    prefix: -t
- id: in_prints_version_number
  doc: ': Prints the version number and exit'
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_absolute_path_output
  doc: '</.../>: ABSOLUTE path to output folder'
  type: File
  outputBinding:
    glob: $(inputs.in_absolute_path_output)
cwlVersion: v1.1
baseCommand:
- compare_reads
