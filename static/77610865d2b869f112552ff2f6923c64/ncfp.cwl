class: CommandLineTool
id: ncfp.cwl
inputs:
- id: in_fname
  doc: input sequence file
  type: string
  inputBinding:
    position: 0
- id: out_dirname
  doc: output directory for sequence files
  type: string
  inputBinding:
    position: 1
- id: email
  doc: email address for NCBI/Entrez
  type: string
  inputBinding:
    position: 2
- id: uniprot
  doc: 'treat input sequences as UniProt FASTA (default: False)'
  type: boolean
  inputBinding:
    prefix: --uniprot
- id: stockholm
  doc: 'parse Stockholm format sequence regions (default: False)'
  type: boolean
  inputBinding:
    prefix: --stockholm
- id: cache_dir
  doc: 'directory for cached data (default: .ncfp_cache)'
  type: string
  inputBinding:
    prefix: --cachedir
- id: cache_stem
  doc: 'suffix for cache filestems (default: 2020-04-29-00-04-55)'
  type: string
  inputBinding:
    prefix: --cachestem
- id: batch_size
  doc: 'batch size for EPost submissions (default: 100)'
  type: string
  inputBinding:
    prefix: --batchsize
- id: retries
  doc: 'maximum number of Entrez retries (default: 10)'
  type: string
  inputBinding:
    prefix: --retries
- id: limit
  doc: 'maximum number of sequences to process (for testing) (default: None)'
  type: string
  inputBinding:
    prefix: --limit
- id: file_stem
  doc: 'stem for output sequence files (default: ncfp)'
  type: File
  inputBinding:
    prefix: --filestem
- id: keep_cache
  doc: 'keep download cache (for testing) (default: False)'
  type: boolean
  inputBinding:
    prefix: --keepcache
- id: skipped_file
  doc: 'path to file with skipped sequences (default: skipped.fasta)'
  type: string
  inputBinding:
    prefix: --skippedfile
- id: log_file
  doc: 'path to logfile (default: None)'
  type: string
  inputBinding:
    prefix: --logfile
- id: verbose
  doc: 'report verbose progress (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: disable_t_qdm
  doc: 'disable progress bar (for testing) (default: False)'
  type: boolean
  inputBinding:
    prefix: --disabletqdm
outputs: []
cwlVersion: v1.1
baseCommand:
- ncfp
