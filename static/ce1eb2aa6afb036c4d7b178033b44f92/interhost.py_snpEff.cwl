class: CommandLineTool
id: interhost.py_snpEff.cwl
inputs:
- id: in_tmp_dir
  doc: 'Base directory for temp files. [default: /tmp]'
  type: Directory?
  inputBinding:
    prefix: --tmp_dir
- id: in_tmp_dir_keep
  doc: "Keep the tmp_dir if an exception occurs while running.\nDefault is to delete\
    \ all temp files at the end, even\nif there's a failure."
  type: boolean?
  inputBinding:
    prefix: --tmp_dirKeep
- id: in_loglevel
  doc: 'Verboseness of output. [default: DEBUG]'
  type: string?
  inputBinding:
    prefix: --loglevel
- id: in_annotate_variants_vcf
  doc: Annotate variants in VCF file with translation consequences using snpEff.
  type: string
  inputBinding:
    position: 0
- id: in_in_vcf
  doc: Input VCF file
  type: string
  inputBinding:
    position: 0
- id: in_genomes
  doc: genome name (snpEff db name, or NCBI accessions)
  type: string
  inputBinding:
    position: 1
- id: in_out_vcf
  doc: Output VCF file
  type: string
  inputBinding:
    position: 2
- id: in_your_email_address
  doc: "Your email address. To access the Genbank\nCoreNucleotide database, NCBI requires\
    \ you to specify\nyour email address with each request. In case of\nexcessive\
    \ usage of the E-utilities, NCBI will attempt\nto contact a user at the email\
    \ address provided before\nblocking access."
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- interhost.py
- snpEff
