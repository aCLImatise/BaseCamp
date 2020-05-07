class: CommandLineTool
id: hmmalign.cwl
inputs:
- id: o
  doc: ': output alignment to file <f>, not stdout'
  type: string
  inputBinding:
    prefix: -o
- id: map_ali
  doc: ': include alignment in file <f> (same ali that HMM came from)'
  type: string
  inputBinding:
    prefix: --mapali
- id: trim
  doc: ': trim terminal tails of nonaligned residues from alignment'
  type: boolean
  inputBinding:
    prefix: --trim
- id: amino
  doc: ': assert <seqfile>, <hmmfile> both protein: no autodetection'
  type: boolean
  inputBinding:
    prefix: --amino
- id: dna
  doc: ': assert <seqfile>, <hmmfile> both DNA: no autodetection'
  type: boolean
  inputBinding:
    prefix: --dna
- id: rna
  doc: ': assert <seqfile>, <hmmfile> both RNA: no autodetection'
  type: boolean
  inputBinding:
    prefix: --rna
- id: in_format
  doc: ': assert <seqfile> is in format <s>: no autodetection'
  type: string
  inputBinding:
    prefix: --informat
- id: out_format
  doc: ': output alignment in format <s>  [Stockholm]'
  type: string
  inputBinding:
    prefix: --outformat
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmalign
