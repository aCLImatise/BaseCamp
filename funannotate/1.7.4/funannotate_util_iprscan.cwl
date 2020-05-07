class: CommandLineTool
id: funannotate_util_iprscan.cwl
inputs:
- id: iprs_can
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: input
  doc: Funannotate folder or FASTA protein file. (Required)
  type: boolean
  inputBinding:
    prefix: --input
- id: method
  doc: 'Search method to use: [local, docker] (Required)'
  type: boolean
  inputBinding:
    prefix: --method
- id: num
  doc: 'Number of fasta files per chunk. Default: 1000'
  type: boolean
  inputBinding:
    prefix: --num
- id: out
  doc: Output XML InterProScan5 file
  type: boolean
  inputBinding:
    prefix: --out
- id: debug
  doc: Keep intermediate files
  type: boolean
  inputBinding:
    prefix: --debug
- id: cpus
  doc: 'Number of CPUs (total). Default: 12     '
  type: boolean
  inputBinding:
    prefix: --cpus
- id: cpus_per_chunk
  doc: 'Number of cpus per Docker instance. Default: 4'
  type: boolean
  inputBinding:
    prefix: --cpus_per_chunk
- id: iprs_can_path
  doc: 'Path to interproscan.sh. Default: which(interproscan.sh)'
  type: boolean
  inputBinding:
    prefix: --iprscan_path
- id: cpus
  doc: 'Number of InterProScan instances to run (configure cpu/thread control in interproscan.properties
    file)          '
  type: boolean
  inputBinding:
    prefix: --cpus
outputs: []
cwlVersion: v1.1
baseCommand:
- funannotate
- util
- iprscan
