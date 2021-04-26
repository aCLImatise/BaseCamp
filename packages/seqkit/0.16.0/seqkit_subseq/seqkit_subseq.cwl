class: CommandLineTool
id: seqkit_subseq.cwl
inputs:
- id: in_n__c
  doc: ":-1                      n\n2:-2      C G T N a c g t\n1:-1    A C G T N a\
    \ c g t n\n1:12    A C G T N a c g t n"
  type: boolean?
  inputBinding:
    prefix: '-1'
- id: in_one_two
  doc: :-1    A C G T N a c g t n
  type: boolean?
  inputBinding:
    prefix: '-12'
- id: in_bed
  doc: by tab-delimited BED file
  type: File?
  inputBinding:
    prefix: --bed
- id: in_chr
  doc: select limited sequence with sequence IDs when using --gtf or --bed (multiple
    value supported, case ignored)
  type: string?
  inputBinding:
    prefix: --chr
- id: in_down_stream
  doc: down stream length
  type: long?
  inputBinding:
    prefix: --down-stream
- id: in_feature
  doc: select limited feature types (multiple value supported, case ignored, only
    works with GTF)
  type: string?
  inputBinding:
    prefix: --feature
- id: in_gtf
  doc: by GTF (version 2.2) file
  type: File?
  inputBinding:
    prefix: --gtf
- id: in_gtf_tag
  doc: output this tag as sequence comment (default "gene_id")
  type: string?
  inputBinding:
    prefix: --gtf-tag
- id: in_only_flank
  doc: only return up/down stream sequence
  type: boolean?
  inputBinding:
    prefix: --only-flank
- id: in_region
  doc: by region. e.g 1:12 for first 12 bases, -12:-1 for last 12 bases, 13:-1 for
    cutting first 12 bases. type "seqkit subseq -h" for more examples
  type: long?
  inputBinding:
    prefix: --region
- id: in_up_stream
  doc: up stream length
  type: long?
  inputBinding:
    prefix: --up-stream
- id: in_alphabet_guess_seq_length
  doc: length of sequence prefix of the first FASTA record based on which seqkit guesses
    the sequence type (0 for whole seq) (default 10000)
  type: long?
  inputBinding:
    prefix: --alphabet-guess-seq-length
- id: in_id_ncbi
  doc: FASTA head is NCBI-style, e.g. >gi|110645304|ref|NC_002516.2| Pseud...
  type: boolean?
  inputBinding:
    prefix: --id-ncbi
- id: in_id_regexp
  doc: regular expression for parsing ID (default "^(\\S+)\\s?")
  type: string?
  inputBinding:
    prefix: --id-regexp
- id: in_in_file_list
  doc: file of input files list (one file per line), if given, they are appended to
    files from cli arguments
  type: File?
  inputBinding:
    prefix: --infile-list
- id: in_line_width
  doc: line width when outputing FASTA format (0 for no wrap) (default 60)
  type: long?
  inputBinding:
    prefix: --line-width
- id: in_out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: File?
  inputBinding:
    prefix: --out-file
- id: in_quiet
  doc: be quiet and do not show extra information
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_seq_type
  doc: sequence type (dna|rna|protein|unlimit|auto) (for auto, it automatically detect
    by the first sequence) (default "auto")
  type: string?
  inputBinding:
    prefix: --seq-type
- id: in_threads
  doc: 'number of CPUs. (default value: 1 for single-CPU PC, 2 for others. can also
    set with environment variable SEQKIT_THREADS) (default 2)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_seq
  doc: A C G T N a c g t n
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: File?
  outputBinding:
    glob: $(inputs.in_out_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seqkit:0.16.0--h9ee0642_0
cwlVersion: v1.1
baseCommand:
- seqkit
- subseq
