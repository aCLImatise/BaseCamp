#!/usr/bin/env cwl-runner

baseCommand:
- sctools_demultiplex
class: CommandLineTool
cwlVersion: v1.0
id: sctools_demultiplex
inputs:
- doc: Path to the CSV file storing the barcodes to be de-multiplexed. Notice that
    the barcode value is expected to be found in first position.
  id: barcodes_csv
  inputBinding:
    prefix: --barcodes-csv
  type: string
- doc: 'Path of the directory where de-multiplexed files are stored. Default: ..'
  id: output_directory
  inputBinding:
    prefix: --output-directory
  type: string
- doc: 'Maximum size of the batch of alignment records loaded in main memory. Default:
    1048576.'
  id: alignment_records_batch
  inputBinding:
    prefix: --alignment-records-batch
  type: long
- doc: Ouput bed files alongside bam ones.
  id: bed
  inputBinding:
    prefix: --bed
  type: boolean
- doc: Coma-separated list of tags that are forbidden in any valid alignment records.
    If an alignment record contains any of the tags specified here, it is not considered
    for the purpose of the de-multiplexing procedure.
  id: forbidden_tags
  inputBinding:
    prefix: --forbidden-tags
  type: string
- doc: 'Minimum mapping quality any alignment record must have, to be considered for
    the purpose of the de-multiplexing procedure. Default: 0.'
  id: min_mapq
  inputBinding:
    prefix: --min-mapq
  type: long
