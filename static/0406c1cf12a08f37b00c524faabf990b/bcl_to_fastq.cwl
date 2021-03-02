class: CommandLineTool
id: bcl_to_fastq.cwl
inputs:
- id: in_input_dir
  doc: "path to input directory; default is RUNFOLDER-\nDIR/Data/Intensities/BaseCalls"
  type: File?
  inputBinding:
    prefix: --input-dir
- id: in_run_folder_dir
  doc: "path to directory containing run data\n[default: /]"
  type: File?
  inputBinding:
    prefix: --runfolder-dir
- id: in_output_dir
  doc: "path to demultiplexed output; default is same\nas INPUT-DIR"
  type: File?
  inputBinding:
    prefix: --output-dir
- id: in_sample_sheet
  doc: "file path to sample sheet; default is\nRUNFOLDER-DIR/SampleSheet.csv"
  type: File?
  inputBinding:
    prefix: --sample-sheet
- id: in_loading
  doc: "number of threads used for loading BCL data\n[default: 12]"
  type: long?
  inputBinding:
    prefix: --loading
- id: in_demultiplexing
  doc: "number of threads used for demultiplexing\n[default: 12]"
  type: long?
  inputBinding:
    prefix: --demultiplexing
- id: in_processing
  doc: "number of threads used for processing\ndemultiplexed data  [default: 24]"
  type: long?
  inputBinding:
    prefix: --processing
- id: in_writing
  doc: "number of threads used for writing FASTQ data\n[default: 12]"
  type: long?
  inputBinding:
    prefix: --writing
- id: in_barcode_mismatches
  doc: "number of allowed mismatches per index\n[default: 0]"
  type: long?
  inputBinding:
    prefix: --barcode-mismatches
- id: in_keep_tmp
  doc: 'save Undetermined reads  [default: False]'
  type: boolean?
  inputBinding:
    prefix: --keep-tmp
- id: in_reverse_complement
  doc: "reverse complement index 2 of the sample sheet\n[default: False]"
  type: boolean?
  inputBinding:
    prefix: --reverse-complement
- id: in_no_wait
  doc: "process the run without checking its\ncompletion status  [default: False]"
  type: boolean?
  inputBinding:
    prefix: --no-wait
- id: in_overwrite
  doc: overwrite existing fastq files in the output
  type: boolean?
  inputBinding:
    prefix: --overwrite
- id: in_determine
  doc: "use barcodes in samplesheet as well as the\nreverse complement of index 2,\
    \ then\ndemultiplex with best  [default: False]"
  type: boolean?
  inputBinding:
    prefix: --determine
- id: in_no_cleanup
  doc: "skip all cleaning up -- do not rename fastq\noutput and do not delete undetermined\
    \ files\n[default: False]"
  type: boolean?
  inputBinding:
    prefix: --no-cleanup
- id: in_directory
  doc: '[default: False]'
  type: Directory
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bcl_to_fastq
