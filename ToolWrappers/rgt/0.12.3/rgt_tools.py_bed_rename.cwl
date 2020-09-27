class: CommandLineTool
id: rgt_tools.py_bed_rename.cwl
inputs:
- id: in_input_bed_file
  doc: Input BED file
  type: File
  inputBinding:
    prefix: -i
- id: in_output_bed_file
  doc: Output BED file
  type: File
  inputBinding:
    prefix: -o
- id: in_strand_specific
  doc: Strand specific
  type: boolean
  inputBinding:
    prefix: -s
- id: in_show_the_distance
  doc: Show the distance
  type: boolean
  inputBinding:
    prefix: -d
- id: in_organism
  doc: Define the organism
  type: boolean
  inputBinding:
    prefix: -organism
- id: in_define_length_bp
  doc: Define the length of promoter region (default:1000 bp)
  type: long
  inputBinding:
    prefix: -l
- id: in_define_threshold_distance
  doc: Define the threshold of distance (default:50000bp
  type: long
  inputBinding:
    prefix: -t
- id: in_target
  doc: Target BED file
  type: boolean
  inputBinding:
    prefix: -target
- id: in_genes
  doc: Target gene list
  type: boolean
  inputBinding:
    prefix: -genes
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_bed_file
  doc: Output BED file
  type: File
  outputBinding:
    glob: $(inputs.in_output_bed_file)
cwlVersion: v1.1
baseCommand:
- rgt-tools.py
- bed_rename
