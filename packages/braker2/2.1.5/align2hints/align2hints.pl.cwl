class: CommandLineTool
id: align2hints.pl.cwl
inputs:
- id: in_skip_alignment_out
  doc: '... -o gthfile'
  type: boolean
  inputBinding:
    prefix: -skipalignmentout
- id: in_in
  doc: input file from gth (gff3), spaln (gff3) or exonerate
  type: boolean
  inputBinding:
    prefix: --in
- id: in_cds_part_cut_off
  doc: "This many bp are cut off of each CDSpart hint\nw.r.t. the cds (default 15)."
  type: long
  inputBinding:
    prefix: --CDSpart_cutoff
- id: in_max_intron_len
  doc: "Alignments with longer gaps are discarded\n(default 350000)."
  type: long
  inputBinding:
    prefix: --maxintronlen
- id: in_min_intron_len
  doc: "Alignments with gaps shorter than this and longer\nthan maxgaplen are discarded\
    \ (default 41)."
  type: long
  inputBinding:
    prefix: --minintronlen
- id: in_priority
  doc: Priority of hint group (default 4).
  type: long
  inputBinding:
    prefix: --priority
- id: in_prg
  doc: "Alignment program of input file, either 'gth',\n'spaln', 'exonerate', 'scipio',\
    \ or 'gemoma'."
  type: File
  inputBinding:
    prefix: --prg
- id: in_source
  doc: Source identifier (default 'P')
  type: string
  inputBinding:
    prefix: --source
- id: in_cds
  doc: Do not output CDSpart hints, but complete CDS
  type: boolean
  inputBinding:
    prefix: --CDS
- id: in_output
  doc: --out                contains CDSpart, CDS and intron hints
  type: string
  inputBinding:
    position: 0
- id: in_hints_dot
  doc: --genome_file=s          if prg is exonerate and start hints shall be
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- align2hints.pl
