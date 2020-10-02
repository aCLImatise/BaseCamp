class: CommandLineTool
id: novoutil_genejunctions.cwl
inputs:
- id: in_max_read_default
  doc: "max read length. Default 100.  This sets the size of junction\nrecords in\
    \ trems of bp from each exon.\n"
  type: boolean
  inputBinding:
    prefix: -l
- id: in_ref_gene_file
  doc: is a refgene format file of genes and exon annotations for the genome.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- novoutil
- genejunctions
