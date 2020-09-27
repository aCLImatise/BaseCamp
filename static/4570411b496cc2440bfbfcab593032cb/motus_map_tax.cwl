class: CommandLineTool
id: motus_map_tax.cwl
inputs:
- id: in_input_files_reads_forward
  doc: input file(s) for reads in forward orientation, fastq formatted
  type:
  - File
  inputBinding:
    prefix: -f
- id: in_input_files_reads_reverse
  doc: input file(s) for reads in reverse orientation, fastq formatted
  type:
  - File
  inputBinding:
    prefix: -r
- id: in_input_files_reads_mate
  doc: input file(s) for reads without mate, fastq formatted
  type:
  - File
  inputBinding:
    prefix: -s
- id: in_output_file_name
  doc: output file name [stdout]
  type: File
  inputBinding:
    prefix: -o
- id: in_save_result_bwa
  doc: save the result of bwa in bam format
  type: boolean
  inputBinding:
    prefix: -b
- id: in_min_length_alignment
  doc: min. length of alignment for the reads (number of nucleotides) [75]
  type: long
  inputBinding:
    prefix: -l
- id: in_number_of_threads
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -t
- id: in_verbose_level_error
  doc: 'verbose level: 1=error, 2=warning, 3=message, 4+=debugging [3]'
  type: long
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: output file name [stdout]
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_name)
cwlVersion: v1.1
baseCommand:
- motus
- map_tax
