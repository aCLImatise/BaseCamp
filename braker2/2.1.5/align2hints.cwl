class: CommandLineTool
id: align2hints.pl.cwl
inputs:
- id: skip_alignment_out
  doc: '... -o gthfile'
  type: boolean
  inputBinding:
    prefix: -skipalignmentout
- id: in
  doc: input file from gth (gff3), spaln (gff3) or exonerate output
  type: boolean
  inputBinding:
    prefix: --in
- id: out
  doc: contains CDSpart, CDS and intron hints
  type: boolean
  inputBinding:
    prefix: --out
- id: cds_part_cut_off
  doc: This many bp are cut off of each CDSpart hint w.r.t. the cds (default 15).
  type: string
  inputBinding:
    prefix: --CDSpart_cutoff
- id: max_intron_len
  doc: Alignments with longer gaps are discarded (default 350000).
  type: string
  inputBinding:
    prefix: --maxintronlen
- id: min_intron_len
  doc: Alignments with gaps shorter than this and longer than maxgaplen are discarded
    (default 41).
  type: string
  inputBinding:
    prefix: --minintronlen
- id: priority
  doc: Priority of hint group (default 4).
  type: string
  inputBinding:
    prefix: --priority
- id: prg
  doc: Alignment program of input file, either 'gth', 'spaln', 'exonerate', 'scipio',
    or 'gemoma'.
  type: string
  inputBinding:
    prefix: --prg
- id: source
  doc: Source identifier (default 'P')
  type: string
  inputBinding:
    prefix: --source
- id: cds
  doc: Do not output CDSpart hints, but complete CDS hints.
  type: boolean
  inputBinding:
    prefix: --CDS
- id: genome_file
  doc: if prg is exonerate and start hints shall be created, the genome file from
    which the alignments were generated, must be specified.
  type: string
  inputBinding:
    prefix: --genome_file
outputs: []
cwlVersion: v1.1
baseCommand:
- align2hints.pl
