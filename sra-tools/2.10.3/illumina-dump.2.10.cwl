#!/usr/bin/env cwl-runner

baseCommand:
- illumina-dump.2.10.3
class: CommandLineTool
cwlVersion: v1.0
id: illumina-dump.2.10.3
inputs:
- doc: 'Replaces accession derived from <path> in  filename(s) and deflines (only
    for single  table dump) '
  id: accession
  inputBinding:
    prefix: --accession
  type: string
- doc: "Output directory, default is working  directory '.' ) "
  id: outdir
  inputBinding:
    prefix: --outdir
  type: File
- doc: 'Output to stdout, all split data become  joined into single stream '
  id: stdout
  inputBinding:
    prefix: --stdout
  type: boolean
- doc: '<path> to ngc file '
  id: ngc
  inputBinding:
    prefix: --ngc
  type: File
- doc: 'Compress output using gzip: deprecated, not  recommended '
  id: gzip
  inputBinding:
    prefix: --gzip
  type: boolean
- doc: 'Compress output using bzip2: deprecated,  not recommended '
  id: bzip2
  inputBinding:
    prefix: --bzip2
  type: boolean
- doc: 'Minimum spot id '
  id: min_spot_id
  inputBinding:
    prefix: --minSpotId
  type: string
- doc: 'Maximum spot id '
  id: max_spot_id
  inputBinding:
    prefix: --maxSpotId
  type: string
- doc: 'Split into files by SPOT_GROUP (member name) '
  id: spot_group
  inputBinding:
    prefix: --spot-group
  type: boolean
- doc: '<[list]>           Filter by SPOT_GROUP (member): name[,...] '
  id: spot_groups
  inputBinding:
    prefix: --spot-groups
  type: boolean
- doc: '<[filter]>      Split into files by READ_FILTER value  optionally filter by
    value:  pass|reject|criteria|redacted '
  id: read_filter
  inputBinding:
    prefix: --read-filter
  type: boolean
- doc: 'Split into subdirectories instead of files '
  id: group_in_dirs
  inputBinding:
    prefix: --group-in-dirs
  type: boolean
- doc: 'Do not delete empty files '
  id: keep_empty_files
  inputBinding:
    prefix: --keep-empty-files
  type: boolean
- doc: 'Table name within cSRA object, default is  "SEQUENCE" '
  id: table
  inputBinding:
    prefix: --table
  type: string
- doc: 'disable multithreading '
  id: disable_multithreading
  inputBinding:
    prefix: --disable-multithreading
  type: boolean
- doc: 'Logging level as number or enum string One  of (fatal|sys|int|err|warn|info)
    or (0-5)  Current/default is warn '
  id: log_level
  inputBinding:
    prefix: --log-level
  type: string
- doc: 'Increase the verbosity level of the program  Use multiple times for more verbosity '
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: 'Control program execution environment  report generation (if implemented).
    One of  (never|error|always). Default is error '
  id: ncbi_error_report
  inputBinding:
    prefix: --ncbi_error_report
  type: boolean
- doc: "use legacy style 'Written spots' for tool "
  id: legacy_report
  inputBinding:
    prefix: --legacy-report
  type: boolean
- doc: '<1|2>                 Output QUALITY, whole spot (1) or split by  reads (2):
    "qcal", default is 1 '
  id: qual1
  inputBinding:
    prefix: --qual1
  type: boolean
- doc: 'Output full QUALITY: "prb", default is off '
  id: qual4
  inputBinding:
    prefix: --qual4
  type: boolean
- doc: 'Output INTENSITY, if present: "int",  default is off '
  id: intensity
  inputBinding:
    prefix: --intensity
  type: boolean
- doc: 'Output NOISE, if present: "nse", default is  off '
  id: noise
  inputBinding:
    prefix: --noise
  type: boolean
- doc: 'Output SIGNAL, if present: "sig2", default  is off '
  id: signal
  inputBinding:
    prefix: --signal
  type: boolean
- doc: '<1|2>                  Output QSEQ format: whole spot (1) or split  by reads:
    "qseq", default is off '
  id: q_seq
  inputBinding:
    prefix: --qseq
  type: boolean
