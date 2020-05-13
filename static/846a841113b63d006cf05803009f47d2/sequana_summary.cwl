class: CommandLineTool
id: sequana_summary.cwl
inputs:
- id: file
  doc: one filename (either FastQ or BED file; see DESCRIPTION)
  type: File
  inputBinding:
    prefix: --file
- id: glob
  doc: a glob/pattern of files. Must use quotes e.g. "*.fastq.gz" (See --file or DESCRIPTION
    for details)
  type: string
  inputBinding:
    prefix: --glob
- id: sample
  doc: If input FastQ files, analyse entire file. You may restrict analysis to set
    of reads
  type: string
  inputBinding:
    prefix: --sample
- id: thread
  doc: Several files may be processed in parallel. By default 4 threads are used
  type: string
  inputBinding:
    prefix: --thread
outputs: []
cwlVersion: v1.1
baseCommand:
- sequana_summary
