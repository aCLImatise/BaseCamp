class: CommandLineTool
id: sctools_demultiplex.cwl
inputs:
- id: in_barcodes_csv
  doc: "Path to the CSV file storing the barcodes to be de-multiplexed.\nNotice that\
    \ the barcode value is expected to be found in first\nposition."
  type: File
  inputBinding:
    prefix: --barcodes-csv
- id: in_output_directory
  doc: "Path of the directory where de-multiplexed files are stored.\nDefault: .."
  type: Directory
  inputBinding:
    prefix: --output-directory
- id: in_alignment_records_batch
  doc: "Maximum size of the batch of alignment records loaded in main\nmemory. Default:\
    \ 1048576."
  type: long
  inputBinding:
    prefix: --alignment-records-batch
- id: in_bed
  doc: Ouput bed files alongside bam ones.
  type: boolean
  inputBinding:
    prefix: --bed
- id: in_forbidden_tags
  doc: "Coma-separated list of tags that are forbidden in any valid\nalignment records.\
    \ If an alignment record contains any of the tags\nspecified here, it is not considered\
    \ for the purpose of the\nde-multiplexing procedure."
  type: string
  inputBinding:
    prefix: --forbidden-tags
- id: in_min_mapq
  doc: "Minimum mapping quality any alignment record must have, to be\nconsidered\
    \ for the purpose of the de-multiplexing procedure.\nDefault: 0."
  type: long
  inputBinding:
    prefix: --min-mapq
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: "Path of the directory where de-multiplexed files are stored.\nDefault: .."
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory)
cwlVersion: v1.1
baseCommand:
- sctools_demultiplex
