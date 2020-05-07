class: CommandLineTool
id: sctools_demultiplex.cwl
inputs:
- id: barcodes_csv
  doc: Path to the CSV file storing the barcodes to be de-multiplexed. Notice that
    the barcode value is expected to be found in first position.
  type: string
  inputBinding:
    prefix: --barcodes-csv
- id: output_directory
  doc: 'Path of the directory where de-multiplexed files are stored. Default: ..'
  type: string
  inputBinding:
    prefix: --output-directory
- id: alignment_records_batch
  doc: 'Maximum size of the batch of alignment records loaded in main memory. Default:
    1048576.'
  type: long
  inputBinding:
    prefix: --alignment-records-batch
- id: bed
  doc: Ouput bed files alongside bam ones.
  type: boolean
  inputBinding:
    prefix: --bed
- id: forbidden_tags
  doc: Coma-separated list of tags that are forbidden in any valid alignment records.
    If an alignment record contains any of the tags specified here, it is not considered
    for the purpose of the de-multiplexing procedure.
  type: string
  inputBinding:
    prefix: --forbidden-tags
- id: min_mapq
  doc: 'Minimum mapping quality any alignment record must have, to be considered for
    the purpose of the de-multiplexing procedure. Default: 0.'
  type: long
  inputBinding:
    prefix: --min-mapq
outputs: []
cwlVersion: v1.1
baseCommand:
- sctools_demultiplex
