class: CommandLineTool
id: ../../../gmap_cat.cwl
inputs:
- id: dir
  doc: Destination directory for output genome index
  type: string
  inputBinding:
    prefix: --dir
- id: db
  doc: Output genome name
  type: string
  inputBinding:
    prefix: --db
- id: names
  doc: 'Substitute names for renaming contigs, provided in a file.  The file have
    two formats: 1.  A file with one column per line, with each line corresponding
    to a FASTA file, in the order of the input genomes.  The chromosome name for each
    FASTA file will be replaced with the desired chromosome name in the file.  Every
    chromosome must have a corresponding line in the file. 2.  A file with two columns
    per line, separated by white space.  In each line, the original FASTA chromosome
    name should be in column 1 and the desired chromosome name will be in column 2.  Not
    every chromosome needs to be listed, which provides an easy way to change a few
    chromosome names.'
  type: string
  inputBinding:
    prefix: --names
- id: options_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: path_slash_to_slash_genome_dir_dot_dot_dot
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- gmap_cat
