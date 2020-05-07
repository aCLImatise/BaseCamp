class: CommandLineTool
id: athena_meta.cwl
inputs:
- id: config
  doc: 'input JSON config file for run, NOTE: dirname(config.json) specifies root
    output directory'
  type: string
  inputBinding:
    prefix: --config
- id: check_prereqs
  doc: test if external deps visible in environment
  type: boolean
  inputBinding:
    prefix: --check_prereqs
- id: test
  doc: run tiny assembly test to check setup and prereqs
  type: boolean
  inputBinding:
    prefix: --test
- id: force_reads
  doc: proceed with subassembly even if input *bam and *fastq do not pass QC
  type: boolean
  inputBinding:
    prefix: --force_reads
- id: threads
  doc: number of multiprocessing threads
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- athena-meta
