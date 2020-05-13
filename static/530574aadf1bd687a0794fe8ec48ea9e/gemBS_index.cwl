class: CommandLineTool
id: gemBS_index.cwl
inputs:
- id: threads
  doc: Number of threads. By default GEM indexer will use the maximum available on
    the system.
  type: string
  inputBinding:
    prefix: --threads
- id: sampling_rate
  doc: Text sampling rate. Increasing will decrease index size at the expense of slower
    mapping performance.
  type: string
  inputBinding:
    prefix: --sampling-rate
- id: list_dbsnp_files
  doc: List of dbSNP files (can be compressed) to create an index to later use it
    at the bscall step. The bed files should have the name of the SNP in column 4.
  type: File[]
  inputBinding:
    prefix: --list-dbSNP-files
outputs: []
cwlVersion: v1.1
baseCommand:
- gemBS
- index
