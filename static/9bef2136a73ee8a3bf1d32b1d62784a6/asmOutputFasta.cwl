class: CommandLineTool
id: asmOutputFasta.cwl
inputs:
- id: p
  doc: write files named 'prefix.XXX.TYPE', etc. XXX =  type of object utg - unitig
    deg - degenerate ctg - contig scf - scaffold TYPE = type of sequence fasta - acgt
    bases qv    - Celera encoded quality values qual  - NCBI encoded quality values
  type: boolean
  inputBinding:
    prefix: -p
- id: u
  doc: do NOT dump unitigs
  type: boolean
  inputBinding:
    prefix: -U
- id: d
  doc: do NOT dump degenerates
  type: boolean
  inputBinding:
    prefix: -D
- id: c
  doc: do NOT dump contigs
  type: boolean
  inputBinding:
    prefix: -C
- id: s
  doc: do NOT dump scaffolds
  type: boolean
  inputBinding:
    prefix: -S
- id: n
  doc: dump only unitigs with at least nf reads in them.  Default is 0 (dump all unitigs).
  type: string
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- asmOutputFasta
