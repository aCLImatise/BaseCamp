class: CommandLineTool
id: ../../../MotifRaptor_snpindex.cwl
inputs:
- id: vcf_filename
  doc: input - VCF file for SNPs, first five columns need to be CHR,POS,ID,REF,ALT
  type: string
  inputBinding:
    prefix: --vcf_filename
- id: indexed_genome_db
  doc: output - indexed genome_database_folder
  type: string
  inputBinding:
    prefix: --indexed_genome_db
- id: mk_sary
  doc: Mksary program path
  type: string
  inputBinding:
    prefix: --mksary
- id: threads
  doc: number of threads
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- MotifRaptor
- snpindex
