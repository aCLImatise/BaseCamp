class: CommandLineTool
id: seqkit_subseq.cwl
inputs:
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bed
  doc: by tab-delimited BED file
  type: string
  inputBinding:
    prefix: --bed
- id: chr
  doc: select limited sequence with sequence IDs when using --gtf or --bed (multiple
    value supported, case ignored)
  type: string
  inputBinding:
    prefix: --chr
- id: down_stream
  doc: down stream length
  type: long
  inputBinding:
    prefix: --down-stream
- id: feature
  doc: select limited feature types (multiple value supported, case ignored, only
    works with GTF)
  type: string
  inputBinding:
    prefix: --feature
- id: gtf
  doc: by GTF (version 2.2) file
  type: string
  inputBinding:
    prefix: --gtf
- id: gtf_tag
  doc: output this tag as sequence comment (default "gene_id")
  type: string
  inputBinding:
    prefix: --gtf-tag
- id: only_flank
  doc: only return up/down stream sequence
  type: boolean
  inputBinding:
    prefix: --only-flank
- id: region
  doc: by region. e.g 1:12 for first 12 bases, -12:-1 for last 12 bases, 13:-1 for
    cutting first 12 bases. type "seqkit subseq -h" for more examples
  type: string
  inputBinding:
    prefix: --region
- id: up_stream
  doc: up stream length
  type: long
  inputBinding:
    prefix: --up-stream
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
- subseq
