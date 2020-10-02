class: CommandLineTool
id: rgt_tools.py_bed_to_fasta.cwl
inputs:
- id: in_input_bed_file
  doc: Input BED file
  type: File
  inputBinding:
    prefix: -i
- id: in_output_directory_fasta
  doc: Output directory for FASTA files
  type: Directory
  inputBinding:
    prefix: -o
- id: in_genome
  doc: Define the FASTA file of the genome sequence
  type: boolean
  inputBinding:
    prefix: -genome
- id: in_loci
  doc: Make genomic loci as sequence name
  type: boolean
  inputBinding:
    prefix: -loci
- id: in_order
  doc: Make ranking number as sequence name
  type: boolean
  inputBinding:
    prefix: -order
- id: in_block
  doc: Read blocks
  type: boolean
  inputBinding:
    prefix: -block
- id: in_score
  doc: Load the score column in BED into FASTA
  type: boolean
  inputBinding:
    prefix: -score
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory_fasta
  doc: Output directory for FASTA files
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory_fasta)
cwlVersion: v1.1
baseCommand:
- rgt-tools.py
- bed_to_fasta
