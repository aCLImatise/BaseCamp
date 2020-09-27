class: CommandLineTool
id: sequana_lane_merging.cwl
inputs:
- id: in_se_quan_a_lane_fusion
  doc: "This searches for data stored in this format:\n<sampleID_1>/*fastq.gz\n<sampleID_2>/*fastq.gz\n\
    <sampleID_3>/*fastq.gz"
  type: string
  inputBinding:
    position: 0
- id: in_sample_id_l_zero_zero_one_dot_fast_q_do_tgz
  doc: sampleID_L002_.fastq.gz
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sequana_lane_merging
