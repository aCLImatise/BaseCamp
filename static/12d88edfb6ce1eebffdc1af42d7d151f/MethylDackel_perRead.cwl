class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/MethylDackel_perRead.cwl
inputs:
- id: ref_dot_fa
  doc: Reference genome in fasta format. This must be indexed with samtools faidx
  type: string
  inputBinding:
    position: 0
- id: input
  doc: An input BAM or CRAM file. This MUST be sorted and should be indexed.
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- MethylDackel
- perRead
