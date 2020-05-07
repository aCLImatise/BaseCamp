class: CommandLineTool
id: centrifuge.cwl
inputs:
- id: phred33
  doc: qualities are Phred+33 (default)
  type: boolean
  inputBinding:
    prefix: --phred33
- id: phred64
  doc: qualities are Phred+64
  type: boolean
  inputBinding:
    prefix: --phred64
- id: int_quals
  doc: qualities encoded as space-delimited integers
  type: boolean
  inputBinding:
    prefix: --int-quals
- id: ignore_quals
  doc: treat all quality values as 30 on Phred scale (off)
  type: boolean
  inputBinding:
    prefix: --ignore-quals
- id: no_fw
  doc: do not align forward (original) version of read (off)
  type: boolean
  inputBinding:
    prefix: --nofw
- id: norc
  doc: do not align reverse-complement version of read (off)
  type: boolean
  inputBinding:
    prefix: --norc
- id: min_hit_len
  doc: minimum length of partial hits (default 22, must be greater than 15)
  type: long
  inputBinding:
    prefix: --min-hitlen
- id: k
  doc: report upto <int> distinct, primary assignments for each read or pair
  type: long
  inputBinding:
    prefix: -k
- id: host_tax_ids
  doc: comma-separated list of taxonomic IDs that will be preferred in classification
  type: string
  inputBinding:
    prefix: --host-taxids
- id: exclude_tax_ids
  doc: comma-separated list of taxonomic IDs that will be excluded in classification
  type: string
  inputBinding:
    prefix: --exclude-taxids
- id: un_gz
  doc: ", to gzip compress output, or add '-bz2' to bzip2 compress output.)"
  type: File
  inputBinding:
    prefix: --un-gz
- id: quiet
  doc: print nothing to stderr except serious errors
  type: boolean
  inputBinding:
    prefix: --quiet
- id: met_file
  doc: send metrics to file at <path> (off)
  type: File
  inputBinding:
    prefix: --met-file
- id: met_stderr
  doc: send metrics to stderr (off)
  type: boolean
  inputBinding:
    prefix: --met-stderr
- id: met
  doc: report internal counters & metrics every <int> secs (1)
  type: long
  inputBinding:
    prefix: --met
- id: p
  doc: /--threads <int> number of alignment threads to launch (1)
  type: boolean
  inputBinding:
    prefix: -p
- id: mm
  doc: use memory-mapped I/O for index; many instances can share
  type: boolean
  inputBinding:
    prefix: --mm
- id: qc_filter
  doc: filter out reads that are bad according to QSEQ filter
  type: boolean
  inputBinding:
    prefix: --qc-filter
- id: seed
  doc: seed for random number generator (0)
  type: long
  inputBinding:
    prefix: --seed
- id: non_deterministic
  doc: rand. gen. arbitrarily instead of using read attributes
  type: string
  inputBinding:
    prefix: --non-deterministic
outputs: []
cwlVersion: v1.1
baseCommand:
- centrifuge
