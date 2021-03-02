class: CommandLineTool
id: ribocount.cwl
inputs:
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
- id: in_count_five
  doc: Flag. Output reads in 5' region
  type: boolean?
  inputBinding:
    prefix: --count_five
- id: in_count_three
  doc: Flag. Output reads in 3' region
  type: boolean?
  inputBinding:
    prefix: --count_three
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
  doc: "FASTA format file of the transcriptome\n"
  type: File?
  inputBinding:
    prefix: --transcriptome_fasta
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
- ribocount
