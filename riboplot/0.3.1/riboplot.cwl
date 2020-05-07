class: CommandLineTool
id: riboplot.cwl
inputs:
- id: rna_file
  doc: RNA-Seq alignment file (BAM)
  type: string
  inputBinding:
    prefix: --rna_file
- id: read_lengths
  doc: 'Read lengths to consider (default: 0). Multiple read lengths should be separated
    by commas. If multiple read lengths are specified, corresponding read offsets
    should also be specified. If you do not wish to apply an offset, please input
    0 for the corresponding read length'
  type: string
  inputBinding:
    prefix: --read_lengths
- id: read_offsets
  doc: 'Read offsets (default: 0). Multiple read offsets should be separated by commas'
  type: string
  inputBinding:
    prefix: --read_offsets
- id: color_scheme
  doc: 'Color scheme to use (default: default)'
  type: string
  inputBinding:
    prefix: --color_scheme
- id: html_file
  doc: Output file for results (HTML)
  type: string
  inputBinding:
    prefix: --html_file
- id: output_path
  doc: Files are saved in this directory
  type: string
  inputBinding:
    prefix: --output_path
- id: debug
  doc: Flag. Produce debug output
  type: boolean
  inputBinding:
    prefix: --debug
- id: ribo_file
  doc: Ribo-Seq alignment file in BAM format
  type: string
  inputBinding:
    prefix: --ribo_file
- id: transcriptome_fast_a
  doc: FASTA format file of the transcriptome
  type: string
  inputBinding:
    prefix: --transcriptome_fasta
- id: transcript_name
  doc: Transcript name
  type: string
  inputBinding:
    prefix: --transcript_name
outputs: []
cwlVersion: v1.1
baseCommand:
- riboplot
