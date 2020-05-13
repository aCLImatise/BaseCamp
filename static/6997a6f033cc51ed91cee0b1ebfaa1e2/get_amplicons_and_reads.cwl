class: CommandLineTool
id: get_amplicons_and_reads.py.cwl
inputs:
- id: primer_hits
  doc: Target primer hits files.  Separate multiple files with a colon. [REQUIRED]
  type: string
  inputBinding:
    prefix: --primer_hits
- id: fast_a_fps
  doc: Fasta filepaths.  Must match the fasta files used in the analyze_primers module.  Multiple
    fasta files can be passed, separated with a colon.  Order not important. [REQUIRED]
  type: string
  inputBinding:
    prefix: --fasta_fps
outputs: []
cwlVersion: v1.1
baseCommand:
- get_amplicons_and_reads.py
