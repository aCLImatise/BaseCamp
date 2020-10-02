class: CommandLineTool
id: seqkit_fish.cwl
inputs:
- id: in_all
  doc: search all
  type: boolean
  inputBinding:
    prefix: --all
- id: in_aln_params
  doc: alignment parameters in format "<match>,<mismatch>,<gap_open>,<gap_extend>"
    (default "4,-4,-2,-1")
  type: long
  inputBinding:
    prefix: --aln-params
- id: in_invert
  doc: print out references not matching with any query
  type: boolean
  inputBinding:
    prefix: --invert
- id: in_min_qual
  doc: minimum mapping quality (default 5)
  type: double
  inputBinding:
    prefix: --min-qual
- id: in_out_bam
  doc: save aligmnets to this BAM file (memory intensive)
  type: File
  inputBinding:
    prefix: --out-bam
- id: in_pass
  doc: pass through mode (write input to stdout)
  type: boolean
  inputBinding:
    prefix: --pass
- id: in_print_aln
  doc: print sequence alignments
  type: boolean
  inputBinding:
    prefix: --print-aln
- id: in_print_desc
  doc: print full sequence header
  type: boolean
  inputBinding:
    prefix: --print-desc
- id: in_query_fast_x
  doc: query fasta
  type: string
  inputBinding:
    prefix: --query-fastx
- id: in_query_sequences
  doc: query sequences
  type: string
  inputBinding:
    prefix: --query-sequences
- id: in_ranges
  doc: 'target ranges, for example: ":10,30:40,-20:"'
  type: long
  inputBinding:
    prefix: --ranges
- id: in_stranded
  doc: search + strand only
  type: boolean
  inputBinding:
    prefix: --stranded
- id: in_validate_seq
  doc: validate bases according to the alphabet
  type: boolean
  inputBinding:
    prefix: --validate-seq
- id: in_validate_seq_length
  doc: length of sequence to validate (0 for whole seq) (default 10000)
  type: long
  inputBinding:
    prefix: --validate-seq-length
- id: in_alphabet_guess_seq_length
  doc: length of sequence prefix of the first FASTA record based on which seqkit guesses
    the sequence type (0 for whole seq) (default 10000)
  type: long
  inputBinding:
    prefix: --alphabet-guess-seq-length
- id: in_id_ncbi
  doc: FASTA head is NCBI-style, e.g. >gi|110645304|ref|NC_002516.2| Pseud...
  type: boolean
  inputBinding:
    prefix: --id-ncbi
- id: in_id_regexp
  doc: regular expression for parsing ID (default "^(\\S+)\\s?")
  type: string
  inputBinding:
    prefix: --id-regexp
- id: in_in_file_list
  doc: file of input files list (one file per line), if given, they are appended to
    files from cli arguments
  type: File
  inputBinding:
    prefix: --infile-list
- id: in_line_width
  doc: line width when outputing FASTA format (0 for no wrap) (default 60)
  type: long
  inputBinding:
    prefix: --line-width
- id: in_out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: File
  inputBinding:
    prefix: --out-file
- id: in_quiet
  doc: be quiet and do not show extra information
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_seq_type
  doc: sequence type (dna|rna|protein|unlimit|auto) (for auto, it automatically detect
    by the first sequence) (default "auto")
  type: string
  inputBinding:
    prefix: --seq-type
- id: in_threads
  doc: 'number of CPUs. (default value: 1 for single-CPU PC, 2 for others. can also
    set with environment variable SEQKIT_THREADS) (default 2)'
  type: long
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: File
  outputBinding:
    glob: $(inputs.in_out_file)
cwlVersion: v1.1
baseCommand:
- seqkit
- fish
