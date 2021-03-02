class: CommandLineTool
id: riboplot.cwl
inputs:
- id: in_rna_file
  doc: RNA-Seq alignment file (BAM)
  type: File?
  inputBinding:
    prefix: --rna_file
- id: in_read_lengths
  doc: "Read lengths to consider (default: 0). Multiple read\nlengths should be separated\
    \ by commas. If multiple\nread lengths are specified, corresponding read offsets\n\
    should also be specified. If you do not wish to apply\nan offset, please input\
    \ 0 for the corresponding read\nlength"
  type: long?
  inputBinding:
    prefix: --read_lengths
- id: in_read_offsets
  doc: "Read offsets (default: 0). Multiple read offsets\nshould be separated by commas"
  type: long?
  inputBinding:
    prefix: --read_offsets
- id: in_color_scheme
  doc: 'Color scheme to use (default: default)'
  type: string?
  inputBinding:
    prefix: --color_scheme
- id: in_html_file
  doc: Output file for results (HTML)
  type: File?
  inputBinding:
    prefix: --html_file
- id: in_output_path
  doc: Files are saved in this directory
  type: File?
  inputBinding:
    prefix: --output_path
- id: in_debug
  doc: Flag. Produce debug output
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_ribo_file
  doc: Ribo-Seq alignment file in BAM format
  type: File?
  inputBinding:
    prefix: --ribo_file
- id: in_transcriptome_fast_a
  doc: FASTA format file of the transcriptome
  type: File?
  inputBinding:
    prefix: --transcriptome_fasta
- id: in_transcript_name
  doc: "Transcript name\n"
  type: string?
  inputBinding:
    prefix: --transcript_name
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_html_file
  doc: Output file for results (HTML)
  type: File?
  outputBinding:
    glob: $(inputs.in_html_file)
- id: out_output_path
  doc: Files are saved in this directory
  type: File?
  outputBinding:
    glob: $(inputs.in_output_path)
hints: []
cwlVersion: v1.1
baseCommand:
- riboplot
