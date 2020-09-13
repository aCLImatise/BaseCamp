class: CommandLineTool
id: ../../../megalodon_extras_phase_variants_extract_haplotype_reads.cwl
inputs:
- id: in_alignment_filename
  doc: Alignment filename.
  type: string
  inputBinding:
    position: 0
- id: in_out_basename
  doc: Basename for read ids output.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- megalodon_extras
- phase_variants
- extract_haplotype_reads
