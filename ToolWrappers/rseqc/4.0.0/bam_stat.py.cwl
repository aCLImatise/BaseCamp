class: CommandLineTool
id: bam_stat.py.cwl
inputs:
- id: in_input_file
  doc: Alignment file in BAM or SAM format.
  type: File?
  inputBinding:
    prefix: --input-file
- id: in_mapq
  doc: "Minimum mapping quality (phred scaled) to determine\n\"uniquely mapped\" reads.\
    \ default=30\n"
  type: long?
  inputBinding:
    prefix: --mapq
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rseqc:4.0.0--py38h0213d0e_0
cwlVersion: v1.1
baseCommand:
- bam_stat.py
