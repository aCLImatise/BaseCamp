class: CommandLineTool
id: goalign_subseq.cwl
inputs:
- id: in_length
  doc: Length of the sub alignment (default 10)
  type: long
  inputBinding:
    prefix: --length
- id: in_output
  doc: Alignment output file (default "stdout")
  type: File
  inputBinding:
    prefix: --output
- id: in_start
  doc: Start position (0-based inclusive)
  type: long
  inputBinding:
    prefix: --start
- id: in_step
  doc: 'Step: If > 0, then will generate several alignments, for each window of length
    l, with starts: [start,start+step, ..., end-l]*'
  type: long
  inputBinding:
    prefix: --step
- id: in_align
  doc: Alignment input file (default "stdin")
  type: File
  inputBinding:
    prefix: --align
- id: in_auto_detect
  doc: Auto detects input format (overrides -p, -x and -u)
  type: boolean
  inputBinding:
    prefix: --auto-detect
- id: in_clustal
  doc: Alignment is in clustal? default fasta
  type: boolean
  inputBinding:
    prefix: --clustal
- id: in_ignore_identical
  doc: Ignore duplicated sequences that have the same name and same sequences
  type: boolean
  inputBinding:
    prefix: --ignore-identical
- id: in_input_strict
  doc: Strict phylip input format (only used with -p)
  type: boolean
  inputBinding:
    prefix: --input-strict
- id: in_nexus
  doc: Alignment is in nexus? default fasta
  type: boolean
  inputBinding:
    prefix: --nexus
- id: in_no_block
  doc: Write Phylip sequences without space separated blocks (only used with -p)
  type: boolean
  inputBinding:
    prefix: --no-block
- id: in_one_line
  doc: Write Phylip sequences on 1 line (only used with -p)
  type: boolean
  inputBinding:
    prefix: --one-line
- id: in_output_strict
  doc: Strict phylip output format (only used with -p)
  type: boolean
  inputBinding:
    prefix: --output-strict
- id: in_phylip
  doc: Alignment is in phylip? default fasta
  type: boolean
  inputBinding:
    prefix: --phylip
- id: in_seed
  doc: 'Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)'
  type: long
  inputBinding:
    prefix: --seed
- id: in_threads
  doc: Number of threads (default 1)
  type: long
  inputBinding:
    prefix: --threads
- id: in_warning_output_stdout
  doc: 'Warning: If output is stdout, it works only if input format is Phylip, because '
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Alignment output file (default "stdout")
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- goalign
- subseq
