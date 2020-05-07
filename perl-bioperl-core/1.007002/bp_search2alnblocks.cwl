class: CommandLineTool
id: bp_search2alnblocks.pl.cwl
inputs:
- id: max_evalue
  doc: Maximum E-value for an HSP
  type: boolean
  inputBinding:
    prefix: --maxevalue
- id: mine_value
  doc: 'Minimum E-value for an HSP '
  type: boolean
  inputBinding:
    prefix: --minevalue
- id: min_len
  doc: 'Minimum length of an HSP [default 0] '
  type: boolean
  inputBinding:
    prefix: --minlen
- id: max_id
  doc: Maximum Percent Id [default 100] (to help remove sequences which are really
    close)
  type: boolean
  inputBinding:
    prefix: --maxid
- id: mini_d
  doc: Minimum Percent Identity for an HSP [default 0]
  type: boolean
  inputBinding:
    prefix: --minid
- id: i
  doc: /--input    An optional input filename (expects input on STDIN by default)
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: /--output   An optional output filename (exports to STDOUT by default)
  type: boolean
  inputBinding:
    prefix: -o
- id: f
  doc: /--format   Specify a different Search Alignment format-  {fasta, axt, waba,
    blast, blastxml} are all permitted although the format must have actual alignment  sequence
    for this script to work See L<Bio::SearchIO> for more information.
  type: boolean
  inputBinding:
    prefix: -f
- id: of
  doc: /--outformat Output format for the alignment blocks, anything L<Bio::AlignIO>
    supports.
  type: boolean
  inputBinding:
    prefix: -of
- id: v
  doc: /--verbose  Turn on debugging
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_search2alnblocks.pl
