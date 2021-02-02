class: CommandLineTool
id: goalign_reformat.cwl
inputs:
- id: in_clean_names
  doc: Replaces special characters (tabs, spaces, newick characters) with '-' from
    input sequence names before writing output alignment
  type: boolean
  inputBinding:
    prefix: --clean-names
- id: in_output
  doc: Reformated alignment output file (default "stdout")
  type: File
  inputBinding:
    prefix: --output
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
- id: in_alignment_clustal_default
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
- id: in_alignment_nexus_default
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
- id: in_alignment_phylip_default
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
- id: in_reformats_input_alignment_clustal
  doc: Reformats an input alignment into Clustal format
  type: string
  inputBinding:
    position: 0
- id: in_fast_a
  doc: Reformats an input alignment into Fasta
  type: string
  inputBinding:
    position: 1
- id: in_reformats_input_alignment_nexus
  doc: Reformats an input alignment into nexus
  type: string
  inputBinding:
    position: 2
- id: in_paml
  doc: Reformats an input alignment into input data for PAML
  type: string
  inputBinding:
    position: 3
- id: in_reformats_input_alignment_phylip
  doc: Reformats an input alignment into Phylip
  type: string
  inputBinding:
    position: 4
- id: in_tnt
  doc: Reformats an input alignment into input data for TNT
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Reformated alignment output file (default "stdout")
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- goalign
- reformat
