#!/usr/bin/env cwl-runner

baseCommand:
- ncfp
class: CommandLineTool
cwlVersion: v1.0
id: ncfp
inputs:
- doc: input sequence file
  id: in_fname
  inputBinding:
    position: 0
  type: string
- doc: output directory for sequence files
  id: out_dirname
  inputBinding:
    position: 1
  type: string
- doc: email address for NCBI/Entrez
  id: email
  inputBinding:
    position: 2
  type: string
- doc: 'treat input sequences as UniProt FASTA (default: False)'
  id: uniprot
  inputBinding:
    prefix: --uniprot
  type: boolean
- doc: 'parse Stockholm format sequence regions (default: False)'
  id: stockholm
  inputBinding:
    prefix: --stockholm
  type: boolean
- doc: 'directory for cached data (default: .ncfp_cache)'
  id: cache_dir
  inputBinding:
    prefix: --cachedir
  type: string
- doc: 'suffix for cache filestems (default: 2020-04-29-00-04-55)'
  id: cache_stem
  inputBinding:
    prefix: --cachestem
  type: string
- doc: 'batch size for EPost submissions (default: 100)'
  id: batch_size
  inputBinding:
    prefix: --batchsize
  type: string
- doc: 'maximum number of Entrez retries (default: 10)'
  id: retries
  inputBinding:
    prefix: --retries
  type: string
- doc: 'maximum number of sequences to process (for testing) (default: None)'
  id: limit
  inputBinding:
    prefix: --limit
  type: string
- doc: 'stem for output sequence files (default: ncfp)'
  id: file_stem
  inputBinding:
    prefix: --filestem
  type: File
- doc: 'keep download cache (for testing) (default: False)'
  id: keep_cache
  inputBinding:
    prefix: --keepcache
  type: boolean
- doc: 'path to file with skipped sequences (default: skipped.fasta)'
  id: skipped_file
  inputBinding:
    prefix: --skippedfile
  type: string
- doc: 'path to logfile (default: None)'
  id: log_file
  inputBinding:
    prefix: --logfile
  type: string
- doc: 'report verbose progress (default: False)'
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: 'disable progress bar (for testing) (default: False)'
  id: disable_t_qdm
  inputBinding:
    prefix: --disabletqdm
  type: boolean
