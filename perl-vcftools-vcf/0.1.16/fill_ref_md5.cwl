class: CommandLineTool
id: ../../../fill_ref_md5.cwl
inputs:
- id: dictionary
  doc: Where to read/write computed MD5s. Opened in append mode, existing records
    are not touched.
  type: File
  inputBinding:
    prefix: --dictionary
- id: info
  doc: <AS:xx,SP:xx,TX:xx>      Optional info on reference assembly (AS), species
    (SP), taxonomy (TX)
  type: boolean
  inputBinding:
    prefix: --info
- id: refseq
  doc: The reference sequence in fasta format indexed by samtools faidx
  type: File
  inputBinding:
    prefix: --refseq
- id: in_dot_vcf_do_tgz
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_vcf_do_tgz
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fill-ref-md5
