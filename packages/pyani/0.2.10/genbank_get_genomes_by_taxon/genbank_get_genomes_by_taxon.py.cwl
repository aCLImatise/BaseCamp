class: CommandLineTool
id: genbank_get_genomes_by_taxon.py.cwl
inputs:
- id: in_outdir
  doc: Output directory (required)
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_tax_on
  doc: NCBI taxonomy ID
  type: string
  inputBinding:
    prefix: --taxon
- id: in_verbose
  doc: Give verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_force
  doc: Force file overwriting
  type: boolean
  inputBinding:
    prefix: --force
- id: in_no_clobber
  doc: Don't nuke existing files
  type: boolean
  inputBinding:
    prefix: --noclobber
- id: in_log_file
  doc: Logfile location
  type: File
  inputBinding:
    prefix: --logfile
- id: in_format
  doc: Output file format [gbk|fasta]
  type: File
  inputBinding:
    prefix: --format
- id: in_email
  doc: Email associated with NCBI queries (required)
  type: string
  inputBinding:
    prefix: --email
- id: in_retries
  doc: Number of Entrez retry attempts per request.
  type: long
  inputBinding:
    prefix: --retries
- id: in_batch_size
  doc: Entrez record return batch size
  type: long
  inputBinding:
    prefix: --batchsize
- id: in_timeout
  doc: Timeout for URL connection (s)
  type: string
  inputBinding:
    prefix: --timeout
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Output directory (required)
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_format
  doc: Output file format [gbk|fasta]
  type: File
  outputBinding:
    glob: $(inputs.in_format)
cwlVersion: v1.1
baseCommand:
- genbank_get_genomes_by_taxon.py
