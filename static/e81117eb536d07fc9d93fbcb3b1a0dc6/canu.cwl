class: CommandLineTool
id: canu.cwl
inputs:
- id: in_p
  doc: \
  type: string?
  inputBinding:
    prefix: -p
- id: in_d
  doc: \
  type: Directory?
  inputBinding:
    prefix: -d
- id: in_pac_bio_hifi
  doc: '] file1 file2 ...'
  type: boolean?
  inputBinding:
    prefix: -pacbio-hifi
- id: in_haplotype
  doc: '- generate haplotype-specific reads'
  type: boolean?
  inputBinding:
    prefix: -haplotype
- id: in_correct
  doc: '- generate corrected reads'
  type: boolean?
  inputBinding:
    prefix: -correct
- id: in_trim
  doc: '- generate trimmed reads'
  type: boolean?
  inputBinding:
    prefix: -trim
- id: in_assemble
  doc: '- generate an assembly'
  type: boolean?
  inputBinding:
    prefix: -assemble
- id: in_trim_assemble
  doc: '- generate trimmed reads and then assemble them'
  type: boolean?
  inputBinding:
    prefix: -trim-assemble
- id: in_haplotype_billy
  doc: billy2.fasta.gz
  type: long?
  inputBinding:
    prefix: -haplotypeBILLY
- id: in_pac_bio
  doc: <files>
  type: boolean?
  inputBinding:
    prefix: -pacbio
- id: in_citation
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -citation
- id: in_version
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -version
- id: in_assembled_dot
  doc: It is used primarily to estimate coverage in reads, NOT as the desired
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- canu
