class: CommandLineTool
id: metagenomics.py_kraken.cwl
inputs:
- id: in_out_report
  doc: Kraken report output file.
  type: File
  inputBinding:
    prefix: --outReport
- id: in_out_reads
  doc: Kraken per read output file.
  type: File
  inputBinding:
    prefix: --outReads
- id: in_filter_threshold
  doc: Kraken filter threshold (default 0.05)
  type: double
  inputBinding:
    prefix: --filterThreshold
- id: in_num_threads
  doc: Number of threads to run. (default 1)
  type: long
  inputBinding:
    prefix: --numThreads
- id: in_loglevel
  doc: 'Verboseness of output. [default: DEBUG]'
  type: string
  inputBinding:
    prefix: --loglevel
- id: in_tmp_dir
  doc: 'Base directory for temp files. [default: /tmp]'
  type: Directory
  inputBinding:
    prefix: --tmp_dir
- id: in_tmp_dir_keep
  doc: "Keep the tmp_dir if an exception occurs while running.\nDefault is to delete\
    \ all temp files at the end, even\nif there's a failure.\n"
  type: boolean
  inputBinding:
    prefix: --tmp_dirKeep
- id: in_in_bam
  doc: Input unaligned reads, BAM format.
  type: string
  inputBinding:
    position: 0
- id: in_db
  doc: Kraken database directory.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_report
  doc: Kraken report output file.
  type: File
  outputBinding:
    glob: $(inputs.in_out_report)
- id: out_out_reads
  doc: Kraken per read output file.
  type: File
  outputBinding:
    glob: $(inputs.in_out_reads)
cwlVersion: v1.1
baseCommand:
- metagenomics.py
- kraken
