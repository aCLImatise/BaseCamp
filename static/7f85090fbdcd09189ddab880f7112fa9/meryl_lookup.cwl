class: CommandLineTool
id: meryl_lookup.cwl
inputs:
- id: in_sequence
  doc: '[<input2.fasta>] \'
  type: long
  inputBinding:
    prefix: -sequence
- id: in_output
  doc: <output1>      [<output2>]
  type: boolean
  inputBinding:
    prefix: -output
- id: in_mers
  doc: <input1.meryl> [<input2.meryl>] [...] \
  type: boolean
  inputBinding:
    prefix: -mers
- id: in_min
  doc: m    Ignore kmers with value below m
  type: boolean
  inputBinding:
    prefix: -min
- id: in_max
  doc: m    Ignore kmers with value above m
  type: boolean
  inputBinding:
    prefix: -max
- id: in_threads
  doc: Number of threads to use when constructing lookup table.
  type: long
  inputBinding:
    prefix: -threads
- id: in_memory
  doc: Don't use more than m GB memory
  type: string
  inputBinding:
    prefix: -memory
- id: in_existence
  doc: "Report a tab-delimited line for each sequence showing the number of kmers\n\
    in the sequence, in the database, and in both.\noutput:  seqName <tab> mersInSeq\
    \ <tab> mersInDB <tab> mersInBoth\nseqName    - name of the sequence\nmersInSeq\
    \  - number of mers in the sequence\nmersInDB   - number of mers in the meryl\
    \ database\nmersInBoth - number of mers in the sequence that are\nalso in the\
    \ database"
  type: boolean
  inputBinding:
    prefix: -existence
- id: in_dump
  doc: "Report a tab-delimited line reporting each kmer in the input sequences, in\n\
    order, annotated with the value of the kmer in the input database.  If the kmer\n\
    does not exist in the database its value will be reported as zero.\noutput:  seqName\
    \ <tab> seqId <tab> seqPos <tab> exists <tab> fwd-mer <tab> fwd-val <tab> rev-mer\
    \ <tab> rev-val\nseqName    - name of the sequence this kmer is from\nseqId  \
    \    - numeric version of the seqName (0-based)\nseqPos     - start position (0-based)\
    \ of the kmer in the sequence\nexists     - 'T' if the kmer exists in the database,\
    \ 'F' if it does not\nfwd-mer    - forward mer sequence\nfwd-val    - value of\
    \ the forward mer in the database\nrev-mer    - reverse mer sequence\nrev-val\
    \    - value of the reverse mer in the database"
  type: boolean
  inputBinding:
    prefix: -dump
- id: in_include
  doc: "/ -exclude\nExtract sequences containing (-include) or not containing (-exclude)\
    \ kmers in\nany input database.  Output sequences are written in the same format\
    \ as the input\nsequences, with the number of kmers found added to the name.\n\
    If two input files are supplied, the corresponding sequences are treated as a\
    \ pair.\noutput:  sequence given format (fasta or fastq) with the number of overlapping\
    \ kmers appended\nif pairs of sequences are given, R1 will be stdout and R2 be\
    \ named as <output.r2>\n<output.r2> will be automatically compressed if ends with\
    \ .gz, .bz2, or xs\nseqName    - name of the sequence this kmer is from\nmersInBoth\
    \ - number of mers in both sequence and in the database"
  type: boolean
  inputBinding:
    prefix: -include
- id: in_exclude
  doc: "Extract sequences *NOT containing* kmers in <input.meryl>.\noutput:  sequence\
    \ given format (fasta or fastq) without reads containing kmers\nif pairs of sequences\
    \ are given, R1 will be stdout and R2 be named as <output.r2>\n<output.r2> will\
    \ be automatically compressed if ends with .gz, .bz2, or xs\nseqName    - name\
    \ of the sequence this kmer is from"
  type: boolean
  inputBinding:
    prefix: -exclude
- id: in_speed_dot
  doc: If the lookup table requires more memory than allowed, the program
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- meryl-lookup
