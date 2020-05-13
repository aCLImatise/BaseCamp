class: CommandLineTool
id: kodoja_build.py.cwl
inputs:
- id: output_dir
  doc: Output directory path, required
  type: string
  inputBinding:
    prefix: --output_dir
- id: threads
  doc: Number of threads, default=1
  type: string
  inputBinding:
    prefix: --threads
- id: host_taxid
  doc: Host tax ID
  type: string
  inputBinding:
    prefix: --host_taxid
- id: download_parallel
  doc: Parallel genome download, default=4
  type: string
  inputBinding:
    prefix: --download_parallel
- id: no_download
  doc: Genomes have already been downloaded
  type: boolean
  inputBinding:
    prefix: --no_download
- id: e
  doc: '[EXTRA_FILES [EXTRA_FILES ...]], --extra_files [EXTRA_FILES [EXTRA_FILES ...]]
    List of extra files added to "extra" dir'
  type: boolean
  inputBinding:
    prefix: -e
- id: x
  doc: '[EXTRA_TAXIDS [EXTRA_TAXIDS ...]], --extra_taxids [EXTRA_TAXIDS [EXTRA_TAXIDS
    ...]] List of taxID of extra files'
  type: boolean
  inputBinding:
    prefix: -x
- id: all_viruses
  doc: Build databases with all viruses (not plant specific)
  type: boolean
  inputBinding:
    prefix: --all_viruses
- id: kraken_tax
  doc: Path to taxonomy directory
  type: string
  inputBinding:
    prefix: --kraken_tax
- id: kraken_km_er
  doc: Kraken kmer size, default=31
  type: string
  inputBinding:
    prefix: --kraken_kmer
- id: kraken_minimizer
  doc: Kraken minimizer size, default=15
  type: string
  inputBinding:
    prefix: --kraken_minimizer
- id: db_tag
  doc: Suffix for databases
  type: string
  inputBinding:
    prefix: --db_tag
outputs: []
cwlVersion: v1.1
baseCommand:
- kodoja_build.py
