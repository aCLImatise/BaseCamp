class: CommandLineTool
id: ../../../mb_bam_postprocess.cwl
inputs:
- id: in_min_length
  doc: minimum alignment length in bp
  type: long
  inputBinding:
    prefix: --min-length
- id: in_mut_edge_bp
  doc: "bp at the start and end of an alignment that cannot\ncontain transitions"
  type: string
  inputBinding:
    prefix: --mut_edge_bp
- id: in_max_transitions
  doc: maximum number of transitions per alignment
  type: long
  inputBinding:
    prefix: --max_transitions
- id: in_min_base_quality
  doc: minimum base quality for aligned bases
  type: long
  inputBinding:
    prefix: --min_base_quality
- id: in_avg_alignment_quality
  doc: minimum average alignment quality
  type: string
  inputBinding:
    prefix: --avg_alignment_quality
- id: in_min_mismatch_quality
  doc: minimum transition base quality
  type: long
  inputBinding:
    prefix: --min_mismatch_quality
- id: in_transition_of_interest
  doc: characteristic PAR-CLIP transition
  type: string
  inputBinding:
    prefix: --transition_of_interest
- id: in_dump_raw_data
  doc: write out mismatch data for manual analysis
  type: boolean
  inputBinding:
    prefix: --dump_raw_data
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mb-bam-postprocess
