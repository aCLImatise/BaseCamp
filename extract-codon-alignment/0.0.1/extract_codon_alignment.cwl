class: CommandLineTool
id: extract_codon_alignment.cwl
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
  doc: '{1,2,3,12,13,23} Codon position(s) to be extracted [12]'
  type: boolean
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
