class: CommandLineTool
id: athena_meta.cwl
inputs:
- id: in_config
  doc: "input JSON config file for run, NOTE:\ndirname(config.json) specifies root\
    \ output directory"
  type: File?
  inputBinding:
    prefix: --config
- id: in_check_prereqs
  doc: test if external deps visible in environment
  type: boolean?
  inputBinding:
    prefix: --check_prereqs
- id: in_test
  doc: run tiny assembly test to check setup and prereqs
  type: boolean?
  inputBinding:
    prefix: --test
- id: in_force_reads
  doc: "proceed with subassembly even if input *bam and *fastq do\nnot pass QC"
  type: boolean?
  inputBinding:
    prefix: --force_reads
- id: in_threads
  doc: number of multiprocessing threads
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- athena-meta
