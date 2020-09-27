class: CommandLineTool
id: fastutils_subsample.cwl
inputs:
- id: in_in
  doc: input file in fasta/q format. This options is required if -r or -l are used
    [stdin]
  type: File
  inputBinding:
    prefix: --in
- id: in_out
  doc: output file [stdout]
  type: File
  inputBinding:
    prefix: --out
- id: in_depth
  doc: coverage of the subsampled set [required]
  type: long
  inputBinding:
    prefix: --depth
- id: in_genome_size
  doc: length of the genome. Accepted suffixes are k,m,g [required]
  type: long
  inputBinding:
    prefix: --genomeSize
- id: in_random
  doc: subsample randomly instead of selecting top reads
  type: boolean
  inputBinding:
    prefix: --random
- id: in_longest
  doc: subsample longest reads instead of selecting top reads
  type: boolean
  inputBinding:
    prefix: --longest
- id: in_seed
  doc: seed for random number generator
  type: long
  inputBinding:
    prefix: --seed
- id: in_fast_q
  doc: output reads in fastq format if possible
  type: boolean
  inputBinding:
    prefix: --fastq
- id: in_comment
  doc: print comments in headers
  type: boolean
  inputBinding:
    prefix: --comment
- id: in_num
  doc: use read index instead of read name
  type: boolean
  inputBinding:
    prefix: --num
- id: in_keep
  doc: keep name as a comment when using -n
  type: boolean
  inputBinding:
    prefix: --keep
- id: in_fof_n
  doc: input file is a file of file names
  type: boolean
  inputBinding:
    prefix: --fofn
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: output file [stdout]
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- fastutils
- subsample
