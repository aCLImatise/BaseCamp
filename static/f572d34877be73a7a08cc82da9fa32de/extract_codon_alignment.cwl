class: CommandLineTool
id: extract_codon_alignment.cwl
inputs:
- id: in_aligned_cds
  doc: The CDS alignment.
  type: File
  inputBinding:
    prefix: --alignedCDS
- id: in_aln_format
  doc: "the file format for the CDS alignment. Anything\naccepted by BioPython is\
    \ fine [fasta]"
  type: File
  inputBinding:
    prefix: --aln_format
- id: in_codon_poses
  doc: Codon position(s) to be extracted [12]
  type: string
  inputBinding:
    prefix: --codonPoses
- id: in_out_aln
  doc: output file name
  type: File
  inputBinding:
    prefix: --outAln
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_aln
  doc: output file name
  type: File
  outputBinding:
    glob: $(inputs.in_out_aln)
cwlVersion: v1.1
baseCommand:
- extract_codon_alignment
