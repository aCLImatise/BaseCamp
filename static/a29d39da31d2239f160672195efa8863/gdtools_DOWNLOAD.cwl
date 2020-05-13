class: CommandLineTool
id: gdtools_DOWNLOAD.cwl
inputs:
- id: login
  doc: Login user:password information for private server access.
  type: string
  inputBinding:
    prefix: --login
- id: download_dir
  doc: Output directory to download file to. (DEFAULT=02_Downloads)
  type: string
  inputBinding:
    prefix: --download-dir
- id: genome_diff_dir
  doc: Directory to search for genome diff files. (DEFAULT=01_Data)
  type: string
  inputBinding:
    prefix: --genome-diff-dir
- id: test
  doc: Test urls in genome diff files, doesn't download the file
  type: boolean
  inputBinding:
    prefix: --test
- id: reference_only
  doc: Only downloads the reference sequence files for this file
  type: boolean
  inputBinding:
    prefix: --reference-only
- id: un_gzip
  doc: Decompress gzipped read files
  type: boolean
  inputBinding:
    prefix: --ungzip
outputs: []
cwlVersion: v1.1
baseCommand:
- gdtools
- DOWNLOAD
