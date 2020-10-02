class: CommandLineTool
id: MotifRaptor_snpindex.cwl
inputs:
- id: in_vcf_filename
  doc: "input - VCF file for SNPs, first five columns need to\nbe CHR,POS,ID,REF,ALT"
  type: File
  inputBinding:
    prefix: --vcf_filename
- id: in_indexed_genome_db
  doc: output - indexed genome_database_folder
  type: string
  inputBinding:
    prefix: --indexed_genome_db
- id: in_mk_sary
  doc: Mksary program path
  type: File
  inputBinding:
    prefix: --mksary
- id: in_threads
  doc: "number of threads\n"
  type: long
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- MotifRaptor
- snpindex
