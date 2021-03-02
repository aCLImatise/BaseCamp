class: CommandLineTool
id: chromatiblock.cwl
inputs:
- id: in_input_directory
  doc: Directory of fasta files to use as input.
  type: Directory?
  inputBinding:
    prefix: --input_directory
- id: in_fast_a_files
  doc: List of fasta/genbank files to use as input
  type: string[]
  inputBinding:
    prefix: --fasta_files
- id: in_order_list
  doc: List of fasta files in desired order.
  type: string?
  inputBinding:
    prefix: --order_list
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
- id: in_extensions
  doc: "When -d is used for input files, chromatiblock will\ncheck against this comma\
    \ seperated list to determine\nwhether to add file to the list of input sequences."
  type: File?
  inputBinding:
    prefix: --extensions
- id: in_out
  doc: Location to write output.
  type: string?
  inputBinding:
    prefix: --out
- id: in_output_format
  doc: "file format to write to, if all is selected --out will\nbe a prefix and extension\
    \ will be added"
  type: File?
  inputBinding:
    prefix: --output_format
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
- id: in_add_fast_a_labels
  doc: add fasta names to figure
  type: string?
  inputBinding:
    prefix: --add_fasta_labels
- id: in_force
  doc: overwrite working directory and output
  type: Directory?
  inputBinding:
    prefix: --force
- id: in_keep
  doc: keep working directory
  type: boolean?
  inputBinding:
    prefix: --keep
- id: in_gpl_v_three
  doc: 'USAGE: chromatiblock -f genome1.fasta genome2.fasta .... genomeN.fasta -w
    working_dir -o figure.html '
  type: long
  inputBinding:
    position: 0
- id: in_or
  doc: chromatiblock -d /path/to/fasta_directory/ -w working_dir -o figure.svg -of
    svg
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_format
  doc: "file format to write to, if all is selected --out will\nbe a prefix and extension\
    \ will be added"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_format)
- id: out_skip_sibel_i_a
  doc: Use sibelia output already in working directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_skip_sibel_i_a)
- id: out_force
  doc: overwrite working directory and output
  type: Directory?
  outputBinding:
    glob: $(inputs.in_force)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/chromatiblock:1.0.0--py_0
cwlVersion: v1.1
baseCommand:
- chromatiblock
