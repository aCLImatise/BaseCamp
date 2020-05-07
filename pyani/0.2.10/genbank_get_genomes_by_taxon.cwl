class: CommandLineTool
id: genbank_get_genomes_by_taxon.py.cwl
inputs:
- id: outdir
  doc: Output directory (required)
  type: string
  inputBinding:
    prefix: --outdir
- id: tax_on
  doc: NCBI taxonomy ID
  type: string
  inputBinding:
    prefix: --taxon
- id: verbose
  doc: Give verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: force
  doc: Force file overwriting
  type: boolean
  inputBinding:
    prefix: --force
- id: no_clobber
  doc: Don't nuke existing files
  type: boolean
  inputBinding:
    prefix: --noclobber
- id: log_file
  doc: Logfile location
  type: string
  inputBinding:
    prefix: --logfile
- id: format
  doc: Output file format [gbk|fasta]
  type: string
  inputBinding:
    prefix: --format
- id: email
  doc: Email associated with NCBI queries (required)
  type: string
  inputBinding:
    prefix: --email
- id: retries
  doc: Number of Entrez retry attempts per request.
  type: string
  inputBinding:
    prefix: --retries
- id: batch_size
  doc: Entrez record return batch size
  type: string
  inputBinding:
    prefix: --batchsize
- id: timeout
  doc: Timeout for URL connection (s)
  type: string
  inputBinding:
    prefix: --timeout
outputs: []
cwlVersion: v1.1
baseCommand:
- genbank_get_genomes_by_taxon.py
