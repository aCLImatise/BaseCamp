class: CommandLineTool
id: ../../../pancake_specify.cwl
inputs:
- id: pan_file
  doc: Name of PanCake Data Object File (required)
  type: string
  inputBinding:
    prefix: --panfile
- id: chrom
  doc: name(s) of respective chromosome(s)
  type: string[]
  inputBinding:
    prefix: --chrom
- id: name
  doc: new name of specified chromosome, this will become the chromosome's name in
    incidental output files
  type: string
  inputBinding:
    prefix: --name
- id: genome
  doc: name of genome CHROM belongs to
  type: string
  inputBinding:
    prefix: --genome
- id: genome_file
  doc: input file containing mapping of chromosomes to genomes and additional chromosome
    names
  type: File
  inputBinding:
    prefix: --genome_file
- id: delete
  doc: chromosome names to delete
  type: string[]
  inputBinding:
    prefix: --delete
outputs: []
cwlVersion: v1.1
baseCommand:
- pancake
- specify
