class: CommandLineTool
id: rtg_vcfstats.cwl
inputs:
- id: in_known
  doc: "only calculate statistics for known variants (Default is\nto ignore known/novel\
    \ status)"
  type: boolean?
  inputBinding:
    prefix: --known
- id: in_novel
  doc: "only calculate statistics for novel variants (Default is\nto ignore known/novel\
    \ status)"
  type: boolean?
  inputBinding:
    prefix: --novel
- id: in_sample
  doc: "only calculate statistics for the specified sample\n(Default is to include\
    \ all samples). May be specified 0\nor more times"
  type: long?
  inputBinding:
    prefix: --sample
- id: in_allele_lengths
  doc: variant length histogram
  type: long?
  inputBinding:
    prefix: --allele-lengths
- id: in_times
  doc: Reporting
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rtg-tools:3.12--0
cwlVersion: v1.1
baseCommand:
- rtg
- vcfstats
