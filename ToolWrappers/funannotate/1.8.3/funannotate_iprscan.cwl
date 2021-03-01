class: CommandLineTool
id: funannotate_iprscan.cwl
inputs:
- id: in_input
  doc: Funannotate folder or FASTA protein file. (Required)
  type: boolean?
  inputBinding:
    prefix: --input
- id: in_method
  doc: 'Search method to use: [local, docker] (Required)'
  type: boolean?
  inputBinding:
    prefix: --method
- id: in_num
  doc: 'Number of fasta files per chunk. Default: 1000'
  type: boolean?
  inputBinding:
    prefix: --num
- id: in_out
  doc: Output XML InterProScan5 file
  type: File?
  inputBinding:
    prefix: --out
- id: in_debug
  doc: Keep intermediate files
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_no_progress
  doc: Do not print progress to stdout for long sub jobs
  type: boolean?
  inputBinding:
    prefix: --no-progress
- id: in_cpus
  doc: 'Number of CPUs (total). Default: 12'
  type: boolean?
  inputBinding:
    prefix: --cpus
- id: in_cpus_per_chunk
  doc: 'Number of cpus per Docker instance. Default: 4'
  type: boolean?
  inputBinding:
    prefix: --cpus_per_chunk
- id: in_iprs_can_path
  doc: 'Path to interproscan.sh. Default: which(interproscan.sh)'
  type: boolean?
  inputBinding:
    prefix: --iprscan_path
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output XML InterProScan5 file
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/funannotate:1.8.3--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- funannotate
- iprscan
