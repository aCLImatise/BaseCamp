class: CommandLineTool
id: ../../../centrifuge.cwl
inputs:
- id: query_input_files_fastq
  doc: query input files are FASTQ .fq/.fastq (default)
  type: boolean
  inputBinding:
    prefix: -q
- id: q_seq
  doc: query input files are in Illumina's qseq format
  type: boolean
  inputBinding:
    prefix: --qseq
- id: query_input_files_multifasta
  doc: query input files are (multi-)FASTA .fa/.mfa
  type: boolean
  inputBinding:
    prefix: -f
- id: query_input_files_raw
  doc: query input files are raw one-sequence-per-line
  type: boolean
  inputBinding:
    prefix: -r
- id: m_m_r
  doc: <m1>, <m2>, <r> are sequences themselves, not files
  type: boolean
  inputBinding:
    prefix: -c
- id: s_slash_skip
  doc: skip the first <int> reads/pairs in the input (none)
  type: long
  inputBinding:
    prefix: -s/--skip
- id: us_lash_up_to
  doc: stop after first <int> reads/pairs (no limit)
  type: long
  inputBinding:
    prefix: -u/--upto
- id: five_slash_trim_five
  doc: trim <int> bases from 5'/left end of reads (0)
  type: long
  inputBinding:
    prefix: -5/--trim5
- id: three_slash_trim_three
  doc: trim <int> bases from 3'/right end of reads (0)
  type: long
  inputBinding:
    prefix: -3/--trim3
- id: phred_three_three
  doc: qualities are Phred+33 (default)
  type: boolean
  inputBinding:
    prefix: --phred33
- id: phred_six_four
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
- id: report_upto_int
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
- id: p_slash_threads
  doc: number of alignment threads to launch (1)
  type: long
  inputBinding:
    prefix: -p/--threads
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
- id: h_slash_help
  doc: print this usage message
  type: boolean
  inputBinding:
    prefix: -h/--help
outputs: []
cwlVersion: v1.1
baseCommand:
- centrifuge
