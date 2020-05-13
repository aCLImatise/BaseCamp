class: CommandLineTool
id: bcl_to_fastq.cwl
inputs:
- id: input_dir
  doc: path to input directory; default is RUNFOLDER- DIR/Data/Intensities/BaseCalls
  type: string
  inputBinding:
    prefix: --input-dir
- id: run_folder_dir
  doc: 'path to directory containing run data [default: /tmp/tmpqmpgu90u]'
  type: string
  inputBinding:
    prefix: --runfolder-dir
- id: output_dir
  doc: path to demultiplexed output; default is same as INPUT-DIR
  type: string
  inputBinding:
    prefix: --output-dir
- id: sample_sheet
  doc: file path to sample sheet; default is RUNFOLDER-DIR/SampleSheet.csv
  type: string
  inputBinding:
    prefix: --sample-sheet
- id: loading
  doc: 'number of threads used for loading BCL data [default: 12]'
  type: long
  inputBinding:
    prefix: --loading
- id: demultiplexing
  doc: 'number of threads used for demultiplexing [default: 12]'
  type: long
  inputBinding:
    prefix: --demultiplexing
- id: processing
  doc: 'number of threads used for processing demultiplexed data  [default: 24]'
  type: long
  inputBinding:
    prefix: --processing
- id: writing
  doc: 'number of threads used for writing FASTQ data [default: 12]'
  type: long
  inputBinding:
    prefix: --writing
- id: barcode_mismatches
  doc: 'number of allowed mismatches per index [default: 0]'
  type: long
  inputBinding:
    prefix: --barcode-mismatches
- id: keep_tmp
  doc: 'save Undetermined reads  [default: False]'
  type: boolean
  inputBinding:
    prefix: --keep-tmp
- id: reverse_complement
  doc: 'reverse complement index 2 of the sample sheet [default: False]'
  type: boolean
  inputBinding:
    prefix: --reverse-complement
- id: no_wait
  doc: 'process the run without checking its completion status  [default: False]'
  type: boolean
  inputBinding:
    prefix: --no-wait
- id: overwrite
  doc: 'overwrite existing fastq files in the output directory  [default: False]'
  type: boolean
  inputBinding:
    prefix: --overwrite
- id: determine
  doc: 'use barcodes in samplesheet as well as the reverse complement of index 2,
    then demultiplex with best  [default: False]'
  type: boolean
  inputBinding:
    prefix: --determine
- id: no_cleanup
  doc: 'skip all cleaning up -- do not rename fastq output and do not delete undetermined
    files [default: False]'
  type: boolean
  inputBinding:
    prefix: --no-cleanup
outputs: []
cwlVersion: v1.1
baseCommand:
- bcl_to_fastq
