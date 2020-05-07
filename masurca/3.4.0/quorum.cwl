class: CommandLineTool
id: quorum.cwl
inputs:
- id: size
  doc: Mer database size (default 200M)
  type: boolean
  inputBinding:
    prefix: --size
- id: threads
  doc: Number of threads (default number of cpus)
  type: boolean
  inputBinding:
    prefix: --threads
- id: prefix
  doc: Output prefix (default quorum_corrected)
  type: boolean
  inputBinding:
    prefix: --prefix
- id: km_er_len
  doc: Kmer length (default 24)
  type: boolean
  inputBinding:
    prefix: --kmer-len
- id: min_q_char
  doc: Minimum quality char. Usually 33 or 64 (autodetect)
  type: boolean
  inputBinding:
    prefix: --min-q-char
- id: min_quality
  doc: Minimum above -q for high quality base (5)
  type: boolean
  inputBinding:
    prefix: --min-quality
- id: window
  doc: Window size for trimming
  type: boolean
  inputBinding:
    prefix: --window
- id: error
  doc: Maximum number of errors in a window
  type: boolean
  inputBinding:
    prefix: --error
- id: min_count
  doc: Minimum count for a k-mer to be good
  type: boolean
  inputBinding:
    prefix: --min-count
- id: skip
  doc: Number of bases to skip to find anchor kmer
  type: boolean
  inputBinding:
    prefix: --skip
- id: anchor
  doc: Numer of good kmer in a row for anchor
  type: boolean
  inputBinding:
    prefix: --anchor
- id: anchor_count
  doc: Minimum count for an anchor kmer
  type: boolean
  inputBinding:
    prefix: --anchor-count
- id: contaminant
  doc: Contaminant sequences
  type: boolean
  inputBinding:
    prefix: --contaminant
- id: trim_contaminant
  doc: Trim sequences with contaminant mers
  type: boolean
  inputBinding:
    prefix: --trim-contaminant
- id: no_discard
  doc: Do not discard reads, output a single N (false)
  type: boolean
  inputBinding:
    prefix: --no-discard
- id: paired_files
  doc: Preserve mate pairs in two files
  type: boolean
  inputBinding:
    prefix: --paired-files
- id: homo_trim
  doc: Trim homo-polymer on 3' end
  type: boolean
  inputBinding:
    prefix: --homo-trim
- id: debug
  doc: Display debugging information
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- quorum
