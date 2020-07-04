class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mateclever.cwl
inputs:
- id: threads
  doc: Threads.
  type: string
  inputBinding:
    prefix: -T
- id: maximum_deletion_length
  doc: 'Maximum deletion length to look for (default: 10000).'
  type: long
  inputBinding:
    prefix: -M
- id: delete_old_result
  doc: Delete old result and working directory first (if present).
  type: boolean
  inputBinding:
    prefix: -f
- id: working_directory_default
  doc: 'Working directory (default: <result-directory>/work).'
  type: string
  inputBinding:
    prefix: -w
- id: keep_default_directory
  doc: 'Keep working directory (default: delete directory when finished).'
  type: boolean
  inputBinding:
    prefix: -k
- id: minimum_expected_support
  doc: 'Minimum expected support for a SNP in order to ignore mismatches at that position
    (default: 3.0).'
  type: string
  inputBinding:
    prefix: -W
- id: maximum_center_distance
  doc: 'Maximum center distance between split-read and read- pair deletion to be considered
    identical (default: 100).'
  type: long
  inputBinding:
    prefix: -o
- id: maximum_length_difference
  doc: 'Maximum length difference between split-read and read- pair deletion to be
    considered identical (default: 20).'
  type: long
  inputBinding:
    prefix: -z
outputs: []
cwlVersion: v1.1
baseCommand:
- mateclever
