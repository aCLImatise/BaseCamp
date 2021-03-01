class: CommandLineTool
id: pash2SAM.cwl
inputs:
- id: in_pash_mappings
  doc: pash mappings file
  type: boolean?
  inputBinding:
    prefix: --pashMappings
- id: in_fast_q_file
  doc: FASTQ file for the mapped reads. When using .fa and .qual file, use our utility
    faqualToFastq.rb
  type: boolean?
  inputBinding:
    prefix: --fastqFile
- id: in_references_equ_nces
  doc: file containing the reference sequences and their lengths
  type: boolean?
  inputBinding:
    prefix: --referenceSequnces
- id: in_bisulfite_seq_flag
  doc: converting the mappings of a bisulfite sequencing run
  type: boolean?
  inputBinding:
    prefix: --bisulfiteSeqFlag
- id: in_sam_file
  doc: output SAM file
  type: File?
  inputBinding:
    prefix: --SAMFile
- id: in_sample
  doc: sample name
  type: boolean?
  inputBinding:
    prefix: --sample
- id: in_center
  doc: center name
  type: boolean?
  inputBinding:
    prefix: --center
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_sam_file
  doc: output SAM file
  type: File?
  outputBinding:
    glob: $(inputs.in_sam_file)
hints: []
cwlVersion: v1.1
baseCommand:
- pash2SAM
