class: CommandLineTool
id: ../../../generate_genes_gff.py.cwl
inputs:
- id: bc_chr_list
  doc: A comma separated dictionary of chromosome names from the BioCyc name to the
    bam name. See the names of chromosomes in bam file using samtools view -H foo.bam.
  type: string
  inputBinding:
    prefix: --BC_chrlist
- id: bc_dir
  doc: BioCyc flat-files directory.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- generate_genes_gff.py
