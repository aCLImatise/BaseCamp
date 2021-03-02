class: CommandLineTool
id: mateclever.cwl
inputs:
- id: in_threads
  doc: Threads.
  type: string?
  inputBinding:
    prefix: -T
- id: in_maximum_deletion_length
  doc: 'Maximum deletion length to look for (default: 10000).'
  type: long?
  inputBinding:
    prefix: -M
- id: in_delete_old_result
  doc: "Delete old result and working directory first (if\npresent)."
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_working_directory_default
  doc: 'Working directory (default: <result-directory>/work).'
  type: Directory?
  inputBinding:
    prefix: -w
- id: in_keep_working_directory
  doc: "Keep working directory (default: delete directory when\nfinished)."
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_minimum_expected_support
  doc: "Minimum expected support for a SNP in order to ignore\nmismatches at that\
    \ position (default: 3.0)."
  type: double?
  inputBinding:
    prefix: -W
- id: in_maximum_center_distance
  doc: "Maximum center distance between split-read and read-\npair deletion to be\
    \ considered identical (default:\n100)."
  type: long?
  inputBinding:
    prefix: -o
- id: in_maximum_length_difference
  doc: "Maximum length difference between split-read and read-\npair deletion to be\
    \ considered identical (default:\n20).\n"
  type: long?
  inputBinding:
    prefix: -z
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mateclever
