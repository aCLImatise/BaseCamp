class: CommandLineTool
id: ncfp.cwl
inputs:
- id: in_stockholm
  doc: "parse Stockholm format sequence regions (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --stockholm
- id: in_cache_dir
  doc: 'directory for cached data (default: .ncfp_cache)'
  type: Directory?
  inputBinding:
    prefix: --cachedir
- id: in_cache_stem
  doc: "suffix for cache filestems (default:\n2021-02-28-17-02-32)"
  type: long?
  inputBinding:
    prefix: --cachestem
- id: in_batch_size
  doc: 'batch size for EPost submissions (default: 100)'
  type: long?
  inputBinding:
    prefix: --batchsize
- id: in_retries
  doc: 'maximum number of Entrez retries (default: 10)'
  type: long?
  inputBinding:
    prefix: --retries
- id: in_limit
  doc: "maximum number of sequences to process (for testing)\n(default: None)"
  type: long?
  inputBinding:
    prefix: --limit
- id: in_file_stem
  doc: 'stem for output sequence files (default: ncfp)'
  type: File?
  inputBinding:
    prefix: --filestem
- id: in_keep_cache
  doc: 'keep download cache (for testing) (default: False)'
  type: boolean?
  inputBinding:
    prefix: --keepcache
- id: in_skipped_file
  doc: "path to file with skipped sequences (default:\nskipped.fasta)"
  type: File?
  inputBinding:
    prefix: --skippedfile
- id: in_log_file
  doc: 'path to logfile (default: None)'
  type: File?
  inputBinding:
    prefix: --logfile
- id: in_verbose
  doc: 'report verbosely (default: False)'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: 'report debug-level information (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_disable_t_qdm
  doc: 'disable progress bar (for testing) (default: False)'
  type: boolean?
  inputBinding:
    prefix: --disabletqdm
- id: in_in_fname
  doc: input sequence file
  type: string
  inputBinding:
    position: 0
- id: in_out_dirname
  doc: output directory for sequence files
  type: string
  inputBinding:
    position: 1
- id: in_email
  doc: email address for NCBI/Entrez
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ncfp:0.2.0--py_0
cwlVersion: v1.1
baseCommand:
- ncfp
