class: CommandLineTool
id: filterIntronsFindStrand.pl.cwl
inputs:
- id: in_allowed
  doc: ',gcag,atac        Allowed acceptor and donor splice site types'
  type: string?
  inputBinding:
    prefix: --allowed
- id: in_score
  doc: Set score to 'mult' entry or '1', if the last column does not contain a 'mult'
    entry
  type: boolean?
  inputBinding:
    prefix: --score
- id: in_genome
  doc: see above
  type: string?
  inputBinding:
    prefix: --genome
- id: in_introns
  doc: see above
  type: string?
  inputBinding:
    prefix: --introns
- id: in_genome_dot_fa
  doc: DNA file in fasta format
  type: string
  inputBinding:
    position: 0
- id: in_introns_dot_gff
  doc: corresponding introns file in gff format
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/braker2:2.1.6--hdfd78af_1
cwlVersion: v1.1
baseCommand:
- filterIntronsFindStrand.pl
