class: CommandLineTool
id: quorum.cwl
inputs:
- id: in_size
  doc: Mer database size (default 200M)
  type: boolean?
  inputBinding:
    prefix: --size
- id: in_threads
  doc: Number of threads (default number of cpus)
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_prefix
  doc: Output prefix (default quorum_corrected)
  type: boolean?
  inputBinding:
    prefix: --prefix
- id: in_km_er_len
  doc: Kmer length (default 24)
  type: boolean?
  inputBinding:
    prefix: --kmer-len
- id: in_min_q_char
  doc: Minimum quality char. Usually 33 or 64 (autodetect)
  type: boolean?
  inputBinding:
    prefix: --min-q-char
- id: in_min_quality
  doc: Minimum above -q for high quality base (5)
  type: boolean?
  inputBinding:
    prefix: --min-quality
- id: in_window
  doc: Window size for trimming
  type: boolean?
  inputBinding:
    prefix: --window
- id: in_error
  doc: Maximum number of errors in a window
  type: boolean?
  inputBinding:
    prefix: --error
- id: in_min_count
  doc: Minimum count for a k-mer to be good
  type: boolean?
  inputBinding:
    prefix: --min-count
- id: in_skip
  doc: Number of bases to skip to find anchor kmer
  type: boolean?
  inputBinding:
    prefix: --skip
- id: in_anchor
  doc: Numer of good kmer in a row for anchor
  type: boolean?
  inputBinding:
    prefix: --anchor
- id: in_anchor_count
  doc: Minimum count for an anchor kmer
  type: boolean?
  inputBinding:
    prefix: --anchor-count
- id: in_contaminant
  doc: Contaminant sequences
  type: boolean?
  inputBinding:
    prefix: --contaminant
- id: in_trim_contaminant
  doc: Trim sequences with contaminant mers
  type: boolean?
  inputBinding:
    prefix: --trim-contaminant
- id: in_no_discard
  doc: Do not discard reads, output a single N (false)
  type: boolean?
  inputBinding:
    prefix: --no-discard
- id: in_paired_files
  doc: Preserve mate pairs in two files
  type: boolean?
  inputBinding:
    prefix: --paired-files
- id: in_homo_trim
  doc: Trim homo-polymer on 3' end
  type: boolean?
  inputBinding:
    prefix: --homo-trim
- id: in_debug
  doc: Display debugging information
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- quorum
