class: CommandLineTool
id: gmap_cat.cwl
inputs:
- id: in_dir
  doc: Destination directory for output genome index
  type: Directory?
  inputBinding:
    prefix: --dir
- id: in_db
  doc: Output genome name
  type: string?
  inputBinding:
    prefix: --db
- id: in_names
  doc: 'Substitute names for renaming contigs, provided in a file.  The file have
    two formats:'
  type: File?
  inputBinding:
    prefix: --names
- id: in_one_dot
  doc: "A file with one column per line, with each line corresponding to a FASTA file,\
    \ in the order\nof the input genomes.  The chromosome name for each FASTA file\
    \ will be replaced with the\ndesired chromosome name in the file.  Every chromosome\
    \ must have a corresponding line in the file."
  type: long
  inputBinding:
    position: 0
- id: in_two_dot
  doc: "A file with two columns per line, separated by white space.  In each line,\
    \ the original\nFASTA chromosome name should be in column 1 and the desired chromosome\
    \ name will be\nin column 2.  Not every chromosome needs to be listed, which provides\
    \ an easy way to change\na few chromosome names.\n"
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_dir
  doc: Destination directory for output genome index
  type: Directory?
  outputBinding:
    glob: $(inputs.in_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gmap:2020.10.14--pl526h2f06484_0
cwlVersion: v1.1
baseCommand:
- gmap_cat
