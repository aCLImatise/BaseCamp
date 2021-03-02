class: CommandLineTool
id: maf2daa.cwl
inputs:
- id: in_in
  doc: sets path to MAF-File (can also be piped in, no gzip allowed here)
  type: boolean?
  inputBinding:
    prefix: --in
- id: in__reads_sets
  doc: ', -- reads             sets path to query-file in FASTA or FASTQ format (can
    also be gzipped)'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_out
  doc: sets path of the reported DAA-File
  type: boolean?
  inputBinding:
    prefix: --out
- id: in_top_percent
  doc: 'sets top percent of reads kept during filtering (default: 10.0)'
  type: boolean?
  inputBinding:
    prefix: --topPercent
- id: in_procs
  doc: 'sets number of used processors (default: maximal number)'
  type: boolean?
  inputBinding:
    prefix: --procs
- id: in_streaming_procs
  doc: 'sets number of used processors while input is piped-in (default: 1)'
  type: boolean?
  inputBinding:
    prefix: --streamingProcs
- id: in_chunksize
  doc: 'sets chunk-size of temporary MAF files (default: 500mb)'
  type: boolean?
  inputBinding:
    prefix: --chunkSize
- id: in_tmp
  doc: 'sets folder for temporary files (default: parent folder of the resulting DAA-File)'
  type: boolean?
  inputBinding:
    prefix: --tmp
- id: in_verbose
  doc: sets verbose mode reporting numbers of reads/references/alignments being analyzed)
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- maf2daa
