class: CommandLineTool
id: fastq_sort.cwl
inputs:
- id: in_reverse
  doc: sort in reverse (i.e., descending) order
  type: boolean?
  inputBinding:
    prefix: --reverse
- id: in_id
  doc: sort alphabetically by read identifier
  type: boolean?
  inputBinding:
    prefix: --id
- id: in_idn
  doc: sort alphanumerically by read identifier according to "samtools sort -n"
  type: boolean?
  inputBinding:
    prefix: --idn
- id: in_seq
  doc: sort alphabetically by sequence
  type: boolean?
  inputBinding:
    prefix: --seq
- id: in_random
  doc: randomly shuffle the sequences
  type: boolean?
  inputBinding:
    prefix: --random
- id: in_seed
  doc: '[=SEED]  seed to use for random shuffle.'
  type: boolean?
  inputBinding:
    prefix: --seed
- id: in_gc
  doc: sort by GC content
  type: boolean?
  inputBinding:
    prefix: --gc
- id: in_mean_qual
  doc: sort by median quality score
  type: boolean?
  inputBinding:
    prefix: --mean-qual
- id: in_buffer_size
  doc: amount of memory to use for sorting
  type: long?
  inputBinding:
    prefix: --buffer-size
- id: in_temporary_directory
  doc: write temporary files here, instead of $TMPDIR, or /tmp
  type: Directory?
  inputBinding:
    prefix: --temporary-directory
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fastq-tools:0.8.3--hed695b0_0
cwlVersion: v1.1
baseCommand:
- fastq-sort
