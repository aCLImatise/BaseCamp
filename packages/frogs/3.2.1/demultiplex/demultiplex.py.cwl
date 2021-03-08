class: CommandLineTool
id: demultiplex.py.cwl
inputs:
- id: in_mismatches
  doc: 'Number of mismatches allowed in barcode. [Default: 0]'
  type: long?
  inputBinding:
    prefix: --mismatches
- id: in_end
  doc: "barcode is at the begining of the forward end (bol) or\nof the reverse (eol)\
    \ or both (both). [Default: bol]"
  type: string?
  inputBinding:
    prefix: --end
- id: in_debug
  doc: Keep temporary files to debug program.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_input_r_one
  doc: 'The R1 sequence file with all samples (format: fastq).'
  type: long?
  inputBinding:
    prefix: --input-R1
- id: in_input_r_two
  doc: 'The R2 sequence file with all samples (format: fastq).'
  type: long?
  inputBinding:
    prefix: --input-R2
- id: in_input_barcode
  doc: "This file describes barcodes and samples (one line by\nsample). Line format\
    \ : SAMPLE_NAME<TAB>BARCODE or\nSAMPLE_NAME<TAB>BARCODE_FW<TAB>BARCODE_RV."
  type: File?
  inputBinding:
    prefix: --input-barcode
- id: in_output_de_multiplexed
  doc: "The tar file containing R1 files and R2 files for each\nsample (format: tar).\
    \ [Default:\ndemultiplexed_read.tar.gz]"
  type: File?
  inputBinding:
    prefix: --output-demultiplexed
- id: in_output_excluded
  doc: "The tar file containing R1 files and R2 files not\ndemultiplexed (format:\
    \ tar). [Default:\nundemultiplexed_read.tar.gz]"
  type: File?
  inputBinding:
    prefix: --output-excluded
- id: in_summary
  doc: "TSV file with summary of filters results (format:\nTSV). [Default: demultiplex_summary.tsv]"
  type: File?
  inputBinding:
    prefix: --summary
- id: in_log_file
  doc: "This output file will contain several informations on\nexecuted commands.\n"
  type: File?
  inputBinding:
    prefix: --log-file
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_log_file
  doc: "This output file will contain several informations on\nexecuted commands.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/frogs:3.2.1--py37_0
cwlVersion: v1.1
baseCommand:
- demultiplex.py
