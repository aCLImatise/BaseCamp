class: CommandLineTool
id: canu.cwl
inputs:
- id: pac_bio_hifi
  doc: '] file1 file2 ...'
  type: boolean
  inputBinding:
    prefix: -pacbio-hifi
- id: haplotype
  doc: '- generate haplotype-specific reads'
  type: boolean
  inputBinding:
    prefix: -haplotype
- id: correct
  doc: '- generate corrected reads'
  type: boolean
  inputBinding:
    prefix: -correct
- id: trim
  doc: '- generate trimmed reads'
  type: boolean
  inputBinding:
    prefix: -trim
- id: assemble
  doc: '- generate an assembly'
  type: boolean
  inputBinding:
    prefix: -assemble
- id: trim_assemble
  doc: reads and then assemble them
  type: string
  inputBinding:
    prefix: -trim-assemble
- id: ignore
  doc: "shorter than 'number' bases long.  Default: 1000."
  type: string
  inputBinding:
    prefix: '- Ignore'
- id: ignore
  doc: "overlaps shorter than 'number' bases long.  Default: 500."
  type: string
  inputBinding:
    prefix: '- Ignore'
- id: haplotype_nanny
  doc: /*gz
  type: string
  inputBinding:
    prefix: -haplotypeNANNY
- id: haplotype_billy
  doc: billy2.fasta.gz
  type: string
  inputBinding:
    prefix: -haplotypeBILLY
outputs: []
cwlVersion: v1.1
baseCommand:
- canu
