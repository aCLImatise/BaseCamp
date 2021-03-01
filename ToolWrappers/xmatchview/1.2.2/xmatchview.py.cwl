class: CommandLineTool
id: xmatchview.py.cwl
inputs:
- id: in_file_crossmatch_format
  doc: file (cross_match .rep or Pairwise mApping Format .paf)
  type: File?
  inputBinding:
    prefix: -x
- id: in_genome_fasta_file
  doc: genome fasta file
  type: File?
  inputBinding:
    prefix: -s
- id: in_contiggenome_fasta_file
  doc: contig/genome fasta file
  type: File?
  inputBinding:
    prefix: -q
- id: in_e
  doc: features (eg. exons) coordinates GFF tsv file (start end) - optional
  type: File?
  inputBinding:
    prefix: -e
- id: in_y
  doc: features (eg. exons) coordinates GFF tsv file (start end) - optional
  type: File?
  inputBinding:
    prefix: -y
- id: in_threshold_eg_m
  doc: threshold (e.g. -m 10 allows representation of repeats having up to 10% mismatch
  type: long?
  inputBinding:
    prefix: -m
- id: in_bp_similarity_block
  doc: (bp) of similarity block to display
  type: long?
  inputBinding:
    prefix: -b
- id: in_pixel_basepair_scale
  doc: (pixel to basepair scale, for displaying the image)
  type: string?
  inputBinding:
    prefix: -c
- id: in_bp_evaluate_numbers
  doc: (bp) to evaluate repeat frequency (smaller numbers will increase the resolution,
    but will affect drastically the run time.  recommended -r=50)
  type: long?
  inputBinding:
    prefix: -r
- id: in_value_transparent_solid
  doc: value, from 0 (transparent) to 255 (solid, default)
  type: long?
  inputBinding:
    prefix: -a
- id: in_image_file_format
  doc: 'image file format (png, tiff, jpeg, or gif) NOTE: png and tiff recommended.'
  type: File?
  inputBinding:
    prefix: -f
- id: in_path_directory_fonts
  doc: path to the directory with fonts on your system (please refer to the documentation
    for fonts used)
  type: File?
  inputBinding:
    prefix: -p
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- xmatchview.py
