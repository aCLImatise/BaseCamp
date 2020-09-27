class: CommandLineTool
id: generate_genes_gff.py.cwl
inputs:
- id: in_bc_chr_list
  doc: "A comma separated dictionary of chromosome names from\nthe BioCyc name to\
    \ the bam name. See the names of\nchromosomes in bam file using samtools view\
    \ -H\nfoo.bam.\n"
  type: File
  inputBinding:
    prefix: --BC_chrlist
- id: in_bc_dir
  doc: BioCyc flat-files directory.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- generate_genes_gff.py
