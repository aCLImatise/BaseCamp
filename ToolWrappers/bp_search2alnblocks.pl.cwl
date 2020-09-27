class: CommandLineTool
id: bp_search2alnblocks.pl.cwl
inputs:
- id: in_max_evalue
  doc: Maximum E-value for an HSP
  type: boolean
  inputBinding:
    prefix: --maxevalue
- id: in_mine_value
  doc: Minimum E-value for an HSP
  type: boolean
  inputBinding:
    prefix: --minevalue
- id: in_min_len
  doc: Minimum length of an HSP [default 0]
  type: boolean
  inputBinding:
    prefix: --minlen
- id: in_max_id
  doc: "Maximum Percent Id [default 100]\n(to help remove sequences which are really\
    \ close)"
  type: boolean
  inputBinding:
    prefix: --maxid
- id: in_mini_d
  doc: Minimum Percent Identity for an HSP [default 0]
  type: boolean
  inputBinding:
    prefix: --minid
- id: in_i_slash_input
  doc: An optional input filename (expects input on STDIN by default)
  type: boolean
  inputBinding:
    prefix: -i/--input
- id: in_oslash_output
  doc: An optional output filename (exports to STDOUT by default)
  type: File
  inputBinding:
    prefix: -o/--output
- id: in_f_slash_format
  doc: "Specify a different Search Alignment format-\n{fasta, axt, waba, blast, blastxml}\
    \ are all permitted\nalthough the format must have actual alignment\nsequence\
    \ for this script to work\nSee L<Bio::SearchIO> for more information."
  type: boolean
  inputBinding:
    prefix: -f/--format
- id: in_of_slash_out_format
  doc: "format for the alignment blocks, anything\nL<Bio::AlignIO> supports."
  type: string
  inputBinding:
    prefix: -of/--outformat
- id: in_v_slash_verbose
  doc: Turn on debugging
  type: boolean
  inputBinding:
    prefix: -v/--verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_oslash_output
  doc: An optional output filename (exports to STDOUT by default)
  type: File
  outputBinding:
    glob: $(inputs.in_oslash_output)
cwlVersion: v1.1
baseCommand:
- bp_search2alnblocks.pl
