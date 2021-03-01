class: CommandLineTool
id: PIPmiR_PIPELINE.cwl
inputs:
- id: in_sorted_bam_file
  doc: ".bam Sorted .bam file containing alignment of the read data\nmust also have\
    \ <alignment_file.bai> at the same location"
  type: File?
  inputBinding:
    prefix: -a
- id: in_version_genome_reads
  doc: .2bit version of the genome against which the reads were aligned
  type: File?
  inputBinding:
    prefix: -t
- id: in_basename_output_files
  doc: basename of output files
  type: string?
  inputBinding:
    prefix: -o
- id: in_minimum_size_default
  doc: 'Minimum size for a precursor sequence (Default: 50)'
  type: long?
  inputBinding:
    prefix: -l
- id: in_maximum_size_default
  doc: 'Maximum size for a precursor sequence (Default: 500)'
  type: long?
  inputBinding:
    prefix: -L
- id: in_step_size_default
  doc: 'Step size for calculating precursor sequence (Default: 2)'
  type: long?
  inputBinding:
    prefix: -s
- id: in_minimum_read_count
  doc: 'Minimum read count for a mature to be considered expressed (Default: 10)'
  type: long?
  inputBinding:
    prefix: -m
- id: in_number_threads_pipmir
  doc: 'Number of threads the PIPmiR can use (Default: 1)'
  type: long?
  inputBinding:
    prefix: -p
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
- id: in_location_rnafold_default
  doc: 'Location of RNAfold (Default: /home/dc97/bin/RNAfold)'
  type: long?
  inputBinding:
    prefix: -R
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
- PIPELINE
