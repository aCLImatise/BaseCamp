class: CommandLineTool
id: scale_metagenome.py.cwl
inputs:
- id: in_verbose
  doc: "Print information during execution -- useful for\ndebugging [default: False]"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_input_seq_depth_file
  doc: "an input tab-delimited table, with samples as the\nfirst column and an integer\
    \ sequencing depth as the\nsecond [REQUIRED]"
  type: File?
  inputBinding:
    prefix: --input_seq_depth_file
- id: in_input_count_table
  doc: "the input trait counts on per otu basis in biom format\n(can be gzipped) [REQUIRED]"
  type: string?
  inputBinding:
    prefix: --input_count_table
- id: in_output_meta_genome_table
  doc: "the output file for the scaled metagenome [REQUIRED]\n"
  type: File?
  inputBinding:
    prefix: --output_metagenome_table
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_meta_genome_table
  doc: "the output file for the scaled metagenome [REQUIRED]\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_meta_genome_table)
hints: []
cwlVersion: v1.1
baseCommand:
- scale_metagenome.py
