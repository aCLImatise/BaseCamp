class: CommandLineTool
id: ca2ta.cwl
inputs:
- id: in_select
  doc: "Only performs this operation for contigs and unitigs\nspecified in fname"
  type: string
  inputBinding:
    prefix: -select
- id: in_contigs
  doc: Does not report unitigs in .tasm
  type: boolean
  inputBinding:
    prefix: -contigs
- id: in_no_fast_a
  doc: Do not create .fasta output
  type: boolean
  inputBinding:
    prefix: -nofasta
- id: in_just_fast_a
  doc: Only create .fasta output
  type: boolean
  inputBinding:
    prefix: -justfasta
- id: in_output_prefix
  doc: Output prefix
  type: string
  inputBinding:
    prefix: -o
- id: in_no_names
  doc: Uses Ids rather than trying to figure out seqnames
  type: boolean
  inputBinding:
    prefix: -nonames
- id: in_check
  doc: Prints out those seqnames that are shorter than MINSEQ
  type: boolean
  inputBinding:
    prefix: -check
- id: in_min_seq
  doc: sets MINSEQ.  Default is 64
  type: boolean
  inputBinding:
    prefix: -minseq
- id: in_filter
  doc: filters the .frg file for sequences shorter than MINSEQ
  type: boolean
  inputBinding:
    prefix: -filter
- id: in_no_qual
  doc: doesnt create .qual file
  type: boolean
  inputBinding:
    prefix: -noqual
- id: in_mates
  doc: creates a .mates file indicating which sequences are mates
  type: boolean
  inputBinding:
    prefix: -mates
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ca2ta
