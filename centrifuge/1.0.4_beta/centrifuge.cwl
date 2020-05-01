#!/usr/bin/env cwl-runner

baseCommand:
- centrifuge
class: CommandLineTool
cwlVersion: v1.0
id: centrifuge
inputs:
- doc: qualities are Phred+33 (default)
  id: phred33
  inputBinding:
    prefix: --phred33
  type: boolean
- doc: qualities are Phred+64
  id: phred64
  inputBinding:
    prefix: --phred64
  type: boolean
- doc: qualities encoded as space-delimited integers
  id: int_quals
  inputBinding:
    prefix: --int-quals
  type: boolean
- doc: treat all quality values as 30 on Phred scale (off)
  id: ignore_quals
  inputBinding:
    prefix: --ignore-quals
  type: boolean
- doc: do not align forward (original) version of read (off)
  id: no_fw
  inputBinding:
    prefix: --nofw
  type: boolean
- doc: do not align reverse-complement version of read (off)
  id: norc
  inputBinding:
    prefix: --norc
  type: boolean
- doc: minimum length of partial hits (default 22, must be greater than 15)
  id: min_hit_len
  inputBinding:
    prefix: --min-hitlen
  type: long
- doc: report upto <int> distinct, primary assignments for each read or pair
  id: k
  inputBinding:
    prefix: -k
  type: long
- doc: comma-separated list of taxonomic IDs that will be preferred in classification
  id: host_tax_ids
  inputBinding:
    prefix: --host-taxids
  type: string
- doc: comma-separated list of taxonomic IDs that will be excluded in classification
  id: exclude_tax_ids
  inputBinding:
    prefix: --exclude-taxids
  type: string
- doc: ", to gzip compress output, or add '-bz2' to bzip2 compress output.)"
  id: un_gz
  inputBinding:
    prefix: --un-gz
  type: File
- doc: print nothing to stderr except serious errors
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: send metrics to file at <path> (off)
  id: met_file
  inputBinding:
    prefix: --met-file
  type: File
- doc: send metrics to stderr (off)
  id: met_stderr
  inputBinding:
    prefix: --met-stderr
  type: boolean
- doc: report internal counters & metrics every <int> secs (1)
  id: met
  inputBinding:
    prefix: --met
  type: long
- doc: /--threads <int> number of alignment threads to launch (1)
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: use memory-mapped I/O for index; many instances can share
  id: mm
  inputBinding:
    prefix: --mm
  type: boolean
- doc: filter out reads that are bad according to QSEQ filter
  id: qc_filter
  inputBinding:
    prefix: --qc-filter
  type: boolean
- doc: seed for random number generator (0)
  id: seed
  inputBinding:
    prefix: --seed
  type: long
- doc: rand. gen. arbitrarily instead of using read attributes
  id: non_deterministic
  inputBinding:
    prefix: --non-deterministic
  type: string
