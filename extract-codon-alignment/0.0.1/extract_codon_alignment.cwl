class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/extract_codon_alignment.cwl
inputs:
- id: aligned_cds
  doc: The CDS alignment.
  type: File
  inputBinding:
    prefix: --alignedCDS
- id: aln_format
  doc: the file format for the CDS alignment. Anything accepted by BioPython is fine
    [fasta]
  type: string
  inputBinding:
    prefix: --aln_format
- id: codon_poses
  doc: Codon position(s) to be extracted [12]
  type: string
  inputBinding:
    prefix: --codonPoses
- id: out_aln
  doc: output file name
  type: File
  inputBinding:
    prefix: --outAln
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_codon_alignment
