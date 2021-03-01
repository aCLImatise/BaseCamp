class: CommandLineTool
id: chromatiblock.cwl
inputs:
- id: in_input_directory
  doc: Directory of fasta files to use as input.
  type: Directory?
  inputBinding:
    prefix: --input_directory
- id: in_order_list
  doc: List of fasta files in desired order.
  type: string?
  inputBinding:
    prefix: --order_list
- id: in_fast_a_files
  doc: List of fasta/genbank files to use as input
  type: string[]
  inputBinding:
    prefix: --fasta_files
- id: in_working_directory
  doc: Folder to write intermediate files.
  type: Directory?
  inputBinding:
    prefix: --working_directory
- id: in_sibel_i_a_path
  doc: "Specify path to sibelia (does not need to be set if\nSibelia binary is in\
    \ path)."
  type: File?
  inputBinding:
    prefix: --sibelia_path
- id: in_sibel_i_a_mode
  doc: mode for running sibelia <loose|fine|far>
  type: string?
  inputBinding:
    prefix: --sibelia_mode
- id: in_out
  doc: "Location to write output (options\n*.svg/*.html/*.png/*.pdf) will default\
    \ to svg (and add\nextension)."
  type: string?
  inputBinding:
    prefix: --out
- id: in_ppi
  doc: "pixels per inch (only used for png, figure width is 8\ninches)"
  type: long?
  inputBinding:
    prefix: --ppi
- id: in_min_block_size
  doc: Minimum size of syntenic block.
  type: long?
  inputBinding:
    prefix: --min_block_size
- id: in_categorise
  doc: color blocks by category
  type: string?
  inputBinding:
    prefix: --categorise
- id: in_genes_of_interest_blast
  doc: mark genes of interest using BLASTx
  type: string?
  inputBinding:
    prefix: --genes_of_interest_blast
- id: in_genes_of_interest_file
  doc: mark genes of interest using a file
  type: File?
  inputBinding:
    prefix: --genes_of_interest_file
- id: in_genome_height
  doc: Height of genome blocks
  type: string?
  inputBinding:
    prefix: --genome_height
- id: in_gap
  doc: gap between genomes
  type: string?
  inputBinding:
    prefix: --gap
- id: in_skip_sibel_i_a
  doc: Use sibelia output already in working directory
  type: Directory?
  inputBinding:
    prefix: --skip_sibelia
- id: in_skip_blast
  doc: use existing BLASTx file for annotation
  type: boolean?
  inputBinding:
    prefix: --skip_blast
- id: in_maf_alignment
  doc: use a maf file for alignment.
  type: File?
  inputBinding:
    prefix: --maf_alignment
- id: in_svg_pan_zoom_location
  doc: location of svg-pan-zoom.min.js
  type: long?
  inputBinding:
    prefix: --svg_pan_zoom_location
- id: in_gpl_v_three
  doc: 'USAGE: chromatiblock -f genome1.fasta genome2.fasta .... genomeN.fasta -o
    image.svg '
  type: long
  inputBinding:
    position: 0
- id: in_or
  doc: chromatiblock -d /path/to/fasta_directory/ -o image.svg
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_skip_sibel_i_a
  doc: Use sibelia output already in working directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_skip_sibel_i_a)
hints: []
cwlVersion: v1.1
baseCommand:
- chromatiblock
