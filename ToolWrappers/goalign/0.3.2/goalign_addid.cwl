class: CommandLineTool
id: ../../../goalign_addid.cwl
inputs:
- id: in_name
  doc: String to add to sequence names (default "none")
  type: string
  inputBinding:
    prefix: --name
- id: in_out_align
  doc: Renamed alignment output file (default "stdout")
  type: File
  inputBinding:
    prefix: --out-align
- id: in_right
  doc: Adds the String on the right of sequence names (otherwise, adds to left)
  type: boolean
  inputBinding:
    prefix: --right
- id: in_unaligned
  doc: Considers sequences as unaligned and format fasta (phylip, nexus,... options
    are ignored)
  type: boolean
  inputBinding:
    prefix: --unaligned
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_align
  doc: Renamed alignment output file (default "stdout")
  type: File
  outputBinding:
    glob: $(inputs.in_out_align)
cwlVersion: v1.1
baseCommand:
- goalign
- addid