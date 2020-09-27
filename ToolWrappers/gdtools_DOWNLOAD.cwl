class: CommandLineTool
id: gdtools_DOWNLOAD.cwl
inputs:
- id: in_login
  doc: Login user:password information for private server access.
  type: string
  inputBinding:
    prefix: --login
- id: in_download_dir
  doc: Output directory to download file to. (DEFAULT=02_Downloads)
  type: File
  inputBinding:
    prefix: --download-dir
- id: in_genome_diff_dir
  doc: Directory to search for genome diff files. (DEFAULT=01_Data)
  type: Directory
  inputBinding:
    prefix: --genome-diff-dir
- id: in_test
  doc: Test urls in genome diff files, doesn't download the file
  type: boolean
  inputBinding:
    prefix: --test
- id: in_reference_only
  doc: Only downloads the reference sequence files for this file
  type: boolean
  inputBinding:
    prefix: --reference-only
- id: in_un_gzip
  doc: Decompress gzipped read files
  type: boolean
  inputBinding:
    prefix: --ungzip
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_download_dir
  doc: Output directory to download file to. (DEFAULT=02_Downloads)
  type: File
  outputBinding:
    glob: $(inputs.in_download_dir)
cwlVersion: v1.1
baseCommand:
- gdtools
- DOWNLOAD
