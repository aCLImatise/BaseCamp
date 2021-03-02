class: CommandLineTool
id: LengthDistribution.cwl
inputs:
- id: in_input
  doc: Sequence fastq file or bam file.[required]
  type: File?
  inputBinding:
    prefix: --input
- id: in_ot_put_prefix
  doc: Prefix of output files.[required]
  type: string?
  inputBinding:
    prefix: --otput_prefix
- id: in_format
  doc: "Format of input file, fastq or bam.[required]\n"
  type: File?
  inputBinding:
    prefix: --format
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ribominer:0.2.3.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- LengthDistribution
