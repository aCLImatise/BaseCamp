class: CommandLineTool
id: count_qmers.cwl
inputs:
- id: in_fastq_file_count
  doc: fastq file to count
  type: File?
  inputBinding:
    prefix: -f
- id: in_length_of_kmer
  doc: Length of kmer
  type: long?
  inputBinding:
    prefix: -k
- id: in_gigabyte_limit_limited
  doc: "Gigabyte limit on RAM. If limited, the output will\ncontain redundancies"
  type: string?
  inputBinding:
    prefix: -l
- id: in_define_hash_table
  doc: 'Define hash table size explicitly. [Default: chosen via k]'
  type: long?
  inputBinding:
    prefix: -t
- id: in_maximum_kmer_count
  doc: 'Maximum k-mer count. [Default: 500]'
  type: long?
  inputBinding:
    prefix: -m
- id: in_quality_value_ascii
  doc: "Quality value ascii scale, generally 64 or 33.  If\nnot specified, it will\
    \ guess.\n"
  type: long?
  inputBinding:
    prefix: -q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- count_qmers
