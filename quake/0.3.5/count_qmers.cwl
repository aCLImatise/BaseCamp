class: CommandLineTool
id: ../../../count_qmers.cwl
inputs:
- id: fastq_file_count
  doc: fastq file to count
  type: string
  inputBinding:
    prefix: -f
- id: length_of_kmer
  doc: 'Length of kmer '
  type: string
  inputBinding:
    prefix: -k
- id: minimum_count_report
  doc: 'Minimum count to report (default: >0)'
  type: long
  inputBinding:
    prefix: -m
- id: gigabyte_limit_ram
  doc: Gigabyte limit on RAM. If limited, the output will contain redundancies
  type: string
  inputBinding:
    prefix: -l
- id: quality_value_ascii
  doc: Quality value ascii scale, generally 64 or 33.  If not specified, it will guess.
  type: string
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- count-qmers
