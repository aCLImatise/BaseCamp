class: CommandLineTool
id: kodoja_build.py.cwl
inputs:
- id: in_output_dir
  doc: Output directory path, required
  type: File
  inputBinding:
    prefix: --output_dir
- id: in_threads
  doc: Number of threads, default=1
  type: long
  inputBinding:
    prefix: --threads
- id: in_host_taxid
  doc: Host tax ID
  type: string
  inputBinding:
    prefix: --host_taxid
- id: in_download_parallel
  doc: Parallel genome download, default=4
  type: long
  inputBinding:
    prefix: --download_parallel
- id: in_no_download
  doc: Genomes have already been downloaded
  type: boolean
  inputBinding:
    prefix: --no_download
- id: in_list_extra_files_added
  doc: "[EXTRA_FILES [EXTRA_FILES ...]], --extra_files [EXTRA_FILES [EXTRA_FILES ...]]\n\
    List of extra files added to \"extra\" dir"
  type: boolean
  inputBinding:
    prefix: -e
- id: in_list_of_extra_files
  doc: "[EXTRA_TAXIDS [EXTRA_TAXIDS ...]], --extra_taxids [EXTRA_TAXIDS [EXTRA_TAXIDS\
    \ ...]]\nList of taxID of extra files"
  type: boolean
  inputBinding:
    prefix: -x
- id: in_all_viruses
  doc: Build databases with all viruses (not plant specific)
  type: boolean
  inputBinding:
    prefix: --all_viruses
- id: in_kraken_tax
  doc: Path to taxonomy directory
  type: File
  inputBinding:
    prefix: --kraken_tax
- id: in_kraken_km_er
  doc: Kraken kmer size, default=31
  type: long
  inputBinding:
    prefix: --kraken_kmer
- id: in_kraken_minimizer
  doc: Kraken minimizer size, default=15
  type: long
  inputBinding:
    prefix: --kraken_minimizer
- id: in_db_tag
  doc: Suffix for databases
  type: string
  inputBinding:
    prefix: --db_tag
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Output directory path, required
  type: File
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- kodoja_build.py
