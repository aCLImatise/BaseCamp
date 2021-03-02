class: CommandLineTool
id: extract_sam.cwl
inputs:
- id: in_name_target_
  doc: Name of target contig, e.g. HXB2:2253-2256
  type: long?
  inputBinding:
    prefix: -t
- id: in_print_more_information
  doc: Print more information (such as subsequences in references)
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_input_sambam_file
  doc: Input SAM/BAM file
  type: File?
  inputBinding:
    prefix: -i
- id: in_output_fasta_file
  doc: Output FASTA file
  type: File?
  inputBinding:
    prefix: -o
- id: in_mf
  doc: Minimum frequency to output
  type: double?
  inputBinding:
    prefix: --mf
- id: in_mc
  doc: Minimum count to output
  type: long?
  inputBinding:
    prefix: --mc
- id: in_prefix
  doc: Prefix to add to header
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_rg
  doc: Minimum frequency for gap containing sequences
  type: double?
  inputBinding:
    prefix: --rg
- id: in_rog
  doc: Remove sequences consisting only of gaps and stop codons
  type: boolean?
  inputBinding:
    prefix: --rog
- id: in_output_sequences_translated
  doc: Output sequences as translated proteins
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_output_sequences_trait
  doc: Output sequences in trait format (for SeTesT)
  type: boolean?
  inputBinding:
    prefix: -T
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_fasta_file
  doc: Output FASTA file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fasta_file)
hints: []
cwlVersion: v1.1
baseCommand:
- extract_sam
