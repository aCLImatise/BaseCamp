class: CommandLineTool
id: seqkit_replace.cwl
inputs:
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: by_seq
  doc: replace seq
  type: boolean
  inputBinding:
    prefix: --by-seq
- id: ignore_case
  doc: ignore case
  type: boolean
  inputBinding:
    prefix: --ignore-case
- id: keep_key
  doc: keep the key as value when no value found for the key (only for sequence name)
  type: boolean
  inputBinding:
    prefix: --keep-key
- id: key_capt_idx
  doc: capture variable index of key (1-based) (default 1)
  type: long
  inputBinding:
    prefix: --key-capt-idx
- id: key_miss_repl
  doc: replacement for key with no corresponding value
  type: string
  inputBinding:
    prefix: --key-miss-repl
- id: kv_file
  doc: tab-delimited key-value file for replacing key with value when using "{kv}"
    in -r (--replacement) (only for sequence name)
  type: string
  inputBinding:
    prefix: --kv-file
- id: nr_width
  doc: minimum width for {nr} in flag -r/--replacement. e.g., formating "1" to "001"
    by --nr-width 3 (default 1)
  type: long
  inputBinding:
    prefix: --nr-width
- id: pattern
  doc: search regular expression
  type: string
  inputBinding:
    prefix: --pattern
- id: replacement
  doc: 'replacement. supporting capture variables.  e.g. $1 represents the text of
    the first submatch. ATTENTION: for *nix OS, use SINGLE quote NOT double quotes
    or use the \ escape character. Record number is also supported by "{nr}".use ${1}
    instead of $1 when {kv} given!'
  type: string
  inputBinding:
    prefix: --replacement
- id: alphabet_guess_seq_length
  doc: length of sequence prefix of the first FASTA record based on which seqkit guesses
    the sequence type (0 for whole seq) (default 10000)
  type: long
  inputBinding:
    prefix: --alphabet-guess-seq-length
- id: id_ncbi
  doc: FASTA head is NCBI-style, e.g. >gi|110645304|ref|NC_002516.2| Pseud...
  type: boolean
  inputBinding:
    prefix: --id-ncbi
- id: id_regexp
  doc: regular expression for parsing ID (default "^(\\S+)\\s?")
  type: string
  inputBinding:
    prefix: --id-regexp
- id: in_file_list
  doc: file of input files list (one file per line), if given, they are appended to
    files from cli arguments
  type: string
  inputBinding:
    prefix: --infile-list
- id: line_width
  doc: line width when outputing FASTA format (0 for no wrap) (default 60)
  type: long
  inputBinding:
    prefix: --line-width
- id: out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: string
  inputBinding:
    prefix: --out-file
- id: quiet
  doc: be quiet and do not show extra information
  type: boolean
  inputBinding:
    prefix: --quiet
- id: seq_type
  doc: sequence type (dna|rna|protein|unlimit|auto) (for auto, it automatically detect
    by the first sequence) (default "auto")
  type: string
  inputBinding:
    prefix: --seq-type
- id: threads
  doc: 'number of CPUs. (default value: 1 for single-CPU PC, 2 for others) (default
    2)'
  type: long
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- seqkit
- replace
