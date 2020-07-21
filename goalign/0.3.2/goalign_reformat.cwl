class: CommandLineTool
id: ../../../goalign_reformat.cwl
inputs:
- id: clean_names
  doc: Replaces special characters (tabs, spaces, newick characters) with '-' from
    input sequence names before writing output alignment
  type: boolean
  inputBinding:
    prefix: --clean-names
- id: output
  doc: Reformated alignment output file (default "stdout")
  type: string
  inputBinding:
    prefix: --output
- id: unaligned
  doc: Considers sequences as unaligned and format fasta (phylip, nexus,... options
    are ignored)
  type: boolean
  inputBinding:
    prefix: --unaligned
- id: align
  doc: Alignment input file (default "stdin")
  type: string
  inputBinding:
    prefix: --align
- id: auto_detect
  doc: Auto detects input format (overrides -p, -x and -u)
  type: boolean
  inputBinding:
    prefix: --auto-detect
- id: alignment_clustal_default
  doc: Alignment is in clustal? default fasta
  type: boolean
  inputBinding:
    prefix: --clustal
- id: ignore_identical
  doc: Ignore duplicated sequences that have the same name and same sequences
  type: boolean
  inputBinding:
    prefix: --ignore-identical
- id: input_strict
  doc: Strict phylip input format (only used with -p)
  type: boolean
  inputBinding:
    prefix: --input-strict
- id: alignment_nexus_default
  doc: Alignment is in nexus? default fasta
  type: boolean
  inputBinding:
    prefix: --nexus
- id: no_block
  doc: Write Phylip sequences without space separated blocks (only used with -p)
  type: boolean
  inputBinding:
    prefix: --no-block
- id: one_line
  doc: Write Phylip sequences on 1 line (only used with -p)
  type: boolean
  inputBinding:
    prefix: --one-line
- id: output_strict
  doc: Strict phylip output format (only used with -p)
  type: boolean
  inputBinding:
    prefix: --output-strict
- id: alignment_phylip_default
  doc: Alignment is in phylip? default fasta
  type: boolean
  inputBinding:
    prefix: --phylip
- id: seed
  doc: 'Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)'
  type: long
  inputBinding:
    prefix: --seed
- id: threads
  doc: Number of threads (default 1)
  type: long
  inputBinding:
    prefix: --threads
- id: reformats_input_alignment_clustal
  doc: Reformats an input alignment into Clustal format
  type: string
  inputBinding:
    position: 0
- id: fast_a
  doc: Reformats an input alignment into Fasta
  type: string
  inputBinding:
    position: 1
- id: reformats_input_alignment_nexus
  doc: Reformats an input alignment into nexus
  type: string
  inputBinding:
    position: 2
- id: paml
  doc: Reformats an input alignment into input data for PAML
  type: string
  inputBinding:
    position: 3
- id: reformats_input_alignment_phylip
  doc: Reformats an input alignment into Phylip
  type: string
  inputBinding:
    position: 4
- id: tnt
  doc: Reformats an input alignment into input data for TNT
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- goalign
- reformat
