class: CommandLineTool
id: StatisticReadsOnDNAsContam.cwl
inputs:
- id: in_input
  doc: "Input files mapped to transcriptome with bam format.\n[required]"
  type: File?
  inputBinding:
    prefix: --input
- id: in_gtf_file
  doc: geome annotation file with gtf format.[required]
  type: File?
  inputBinding:
    prefix: --gtfFile
- id: in_ot_put_prefix
  doc: "Prefix of output files.[required]\n"
  type: string?
  inputBinding:
    prefix: --otput_prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ribominer:0.2.3.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- StatisticReadsOnDNAsContam
