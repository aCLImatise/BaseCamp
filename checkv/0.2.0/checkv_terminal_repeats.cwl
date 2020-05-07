class: CommandLineTool
id: checkv_terminal_repeats.cwl
inputs:
- id: input
  doc: Input viral sequences in FASTA format
  type: string
  inputBinding:
    position: 0
- id: output
  doc: Output directory
  type: string
  inputBinding:
    position: 1
- id: min_contig_len
  doc: 'Min contig length (default: 2000)'
  type: long
  inputBinding:
    prefix: --min_contig_len
- id: min_tr_len
  doc: 'Min length of TR (default: 20)'
  type: long
  inputBinding:
    prefix: --min_tr_len
- id: max_tr_count
  doc: 'Max occurrences of TR per contig (default: 5)'
  type: long
  inputBinding:
    prefix: --max_tr_count
- id: max_tr_dust
  doc: 'Longest low complexity region per TR, as % of TR length (default: 20.0)'
  type: double
  inputBinding:
    prefix: --max_tr_dust
- id: quiet
  doc: 'Suppress logging messages (default: False)'
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- checkv
- terminal_repeats
