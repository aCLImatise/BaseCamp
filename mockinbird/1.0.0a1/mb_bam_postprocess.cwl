class: CommandLineTool
id: mb_bam_postprocess.cwl
inputs:
- id: input_bam_file
  doc: input bam file to be postprocessed
  type: string
  inputBinding:
    position: 0
- id: output_bam_file
  doc: filtered output bam file
  type: string
  inputBinding:
    position: 1
- id: output_directory
  doc: output directory for plots and statistics
  type: string
  inputBinding:
    position: 2
- id: min_length
  doc: minimum alignment length in bp
  type: long
  inputBinding:
    prefix: --min-length
- id: mut_edge_bp
  doc: bp at the start and end of an alignment that cannot contain transitions
  type: string
  inputBinding:
    prefix: --mut_edge_bp
- id: max_transitions
  doc: maximum number of transitions per alignment
  type: long
  inputBinding:
    prefix: --max_transitions
- id: min_base_quality
  doc: minimum base quality for aligned bases
  type: long
  inputBinding:
    prefix: --min_base_quality
- id: avg_alignment_quality
  doc: minimum average alignment quality
  type: string
  inputBinding:
    prefix: --avg_alignment_quality
- id: min_mismatch_quality
  doc: minimum transition base quality
  type: long
  inputBinding:
    prefix: --min_mismatch_quality
- id: transition_of_interest
  doc: characteristic PAR-CLIP transition
  type: string
  inputBinding:
    prefix: --transition_of_interest
- id: dump_raw_data
  doc: write out mismatch data for manual analysis
  type: boolean
  inputBinding:
    prefix: --dump_raw_data
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-bam-postprocess
