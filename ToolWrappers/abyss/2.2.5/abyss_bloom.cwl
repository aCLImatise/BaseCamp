class: CommandLineTool
id: abyss_bloom.cwl
inputs:
- id: in_km_er
  doc: the size of a k-mer [<=128]
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_bloom_size
  doc: size of bloom filter [500M]
  type: long?
  inputBinding:
    prefix: --bloom-size
- id: in_buffer_size
  doc: size of I/O buffer for each thread, in bytes [100000]
  type: long?
  inputBinding:
    prefix: --buffer-size
- id: in_threads
  doc: use N parallel threads [1]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_hash_seed
  doc: "seed for hash function (only works with\n`-t konnector') [0]"
  type: long?
  inputBinding:
    prefix: --hash-seed
- id: in_num_hashes
  doc: "number of hash functions (only works with\n`-t rolling-hash') [1]"
  type: long?
  inputBinding:
    prefix: --num-hashes
- id: in_levels
  doc: "build a cascading bloom filter with N levels\nand output the last level"
  type: string?
  inputBinding:
    prefix: --levels
- id: in_in_it_level
  doc: "='N=FILE'  initialize level N of cascading bloom filter\nfrom FILE"
  type: boolean?
  inputBinding:
    prefix: --init-level
- id: in_chastity
  doc: discard unchaste reads [default]
  type: boolean?
  inputBinding:
    prefix: --chastity
- id: in_no_chastity
  doc: do not discard unchaste reads
  type: boolean?
  inputBinding:
    prefix: --no-chastity
- id: in_trim_masked
  doc: trim masked bases from the ends of reads
  type: boolean?
  inputBinding:
    prefix: --trim-masked
- id: in_no_trim_masked
  doc: "do not trim masked bases from the ends\nof reads [default]"
  type: boolean?
  inputBinding:
    prefix: --no-trim-masked
- id: in_num_locks
  doc: number of write locks on bloom filter [1000]
  type: long?
  inputBinding:
    prefix: --num-locks
- id: in_trim_quality
  doc: "trim bases from the ends of reads whose\nquality is less than the threshold"
  type: string?
  inputBinding:
    prefix: --trim-quality
- id: in_bloom_type
  doc: "'konnector', 'rolling-hash', or 'counting' [konnector]"
  type: string?
  inputBinding:
    prefix: --bloom-type
- id: in_standard_quality
  doc: "zero quality is `!' (33)\ndefault for FASTQ and SAM files"
  type: boolean?
  inputBinding:
    prefix: --standard-quality
- id: in_illumina_quality
  doc: "zero quality is `@' (64)\ndefault for qseq and export files"
  type: boolean?
  inputBinding:
    prefix: --illumina-quality
- id: in_window
  doc: /N           build a bloom filter for subwindow M of N
  type: string?
  inputBinding:
    prefix: --window
- id: in_method
  doc: "=`String'      choose distance calculation method\n[`jaccard'(default), `forbes',\
    \ `czekanowski']"
  type: boolean?
  inputBinding:
    prefix: --method
- id: in_depth
  doc: depth of neighbouring from --root [k]
  type: string?
  inputBinding:
    prefix: --depth
- id: in_root
  doc: root k-mer from graph traversal [required]
  type: string?
  inputBinding:
    prefix: --root
- id: in_root_fast_a
  doc: get root k-mers from FASTA file
  type: File?
  inputBinding:
    prefix: --root-fasta
- id: in_fast_a_attr
  doc: :FILE, assign a node attribute (e.g. 'color=blue')
  type: File?
  inputBinding:
    prefix: --fasta-attr
- id: in_node_attr
  doc: :FILE   to k-mers in the given FASTA
  type: File?
  inputBinding:
    prefix: --node-attr
- id: in_bloom_attr
  doc: ":FILE  assign a node attribute (e.g. 'color=blue')\nto k-mers in the given\
    \ Bloom filter"
  type: File?
  inputBinding:
    prefix: --bloom-attr
- id: in_inverse
  doc: get k-mers that are *NOT* in the bloom filter
  type: boolean?
  inputBinding:
    prefix: --inverse
- id: in_bed
  doc: output k-mers in BED format
  type: boolean?
  inputBinding:
    prefix: --bed
- id: in_fast_a
  doc: output k-mers in FASTA format [default]
  type: boolean?
  inputBinding:
    prefix: --fasta
- id: in_raw
  doc: output k-mers in raw format (one per line)
  type: boolean?
  inputBinding:
    prefix: --raw
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/abyss:2.2.5--ha4ec83a_0
cwlVersion: v1.1
baseCommand:
- abyss-bloom
