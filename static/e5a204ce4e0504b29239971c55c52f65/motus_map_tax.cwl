class: CommandLineTool
id: ../../../motus_map_tax.cwl
inputs:
- id: input_files_reads_forward
  doc: input file(s) for reads in forward orientation, fastq formatted
  type:
  - File
  inputBinding:
    prefix: -f
- id: input_files_reads_reverse
  doc: input file(s) for reads in reverse orientation, fastq formatted
  type:
  - File
  inputBinding:
    prefix: -r
- id: input_files_reads_mate
  doc: input file(s) for reads without mate, fastq formatted
  type:
  - File
  inputBinding:
    prefix: -s
- id: db
  doc: provide a database directory
  type: string
  inputBinding:
    prefix: -db
- id: file_file_name
  doc: FILE         output file name [stdout]
  type: boolean
  inputBinding:
    prefix: -o
- id: save_result_bwa
  doc: save the result of bwa in bam format
  type: boolean
  inputBinding:
    prefix: -b
- id: int_min_length
  doc: INT          min. length of alignment for the reads (number of nucleotides)
    [75]
  type: boolean
  inputBinding:
    prefix: -l
- id: int_number_threads
  doc: INT          number of threads [1]
  type: boolean
  inputBinding:
    prefix: -t
- id: int_error_warning
  doc: 'INT          verbose level: 1=error, 2=warning, 3=message, 4+=debugging [3]'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- motus
- map_tax
