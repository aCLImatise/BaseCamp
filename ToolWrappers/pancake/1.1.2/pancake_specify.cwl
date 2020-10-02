class: CommandLineTool
id: pancake_specify.cwl
inputs:
- id: in_pan_file
  doc: Name of PanCake Data Object File (required)
  type: File
  inputBinding:
    prefix: --panfile
- id: in_chrom
  doc: name(s) of respective chromosome(s)
  type: string[]
  inputBinding:
    prefix: --chrom
- id: in_name
  doc: "new name of specified chromosome, this will become the\nchromosome's name\
    \ in incidental output files"
  type: string
  inputBinding:
    prefix: --name
- id: in_genome
  doc: name of genome CHROM belongs to
  type: string
  inputBinding:
    prefix: --genome
- id: in_genome_file
  doc: "input file containing mapping of chromosomes to\ngenomes and additional chromosome\
    \ names"
  type: File
  inputBinding:
    prefix: --genome_file
- id: in_delete
  doc: "chromosome names to delete\n"
  type: string[]
  inputBinding:
    prefix: --delete
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pancake
- specify
