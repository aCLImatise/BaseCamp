class: CommandLineTool
id: PIPmiR_CLASSIFIER.cwl
inputs:
- id: in_file_their_structure
  doc: File of putative miRNA precursor sequences and their fold structure (see README)
  type: File?
  inputBinding:
    prefix: -P
- id: in_sorted_bam_file
  doc: .bam Sorted .bam file containing alignment of the read data
  type: File?
  inputBinding:
    prefix: -a
- id: in_basename_output_files
  doc: basename of output files
  type: string?
  inputBinding:
    prefix: -o
- id: in_minimum_read_count
  doc: 'Minimum read count for a mature to be considered expressed (Default: 10)'
  type: long?
  inputBinding:
    prefix: -m
- id: in_maximum_amount_memory
  doc: 'Maximum amount of memory PIPmiR can use (Default: 4G)'
  type: long?
  inputBinding:
    prefix: -X
- id: in_file_containing_trainingdatadat
  doc: 'File containing classifier training data (Default: TrainingData.dat)'
  type: File?
  inputBinding:
    prefix: -T
- id: in_creates_log_file
  doc: Creates a log file of PIPmiR results at <output_header>_log.csv
  type: boolean?
  inputBinding:
    prefix: -d
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- PIPmiR
- CLASSIFIER
