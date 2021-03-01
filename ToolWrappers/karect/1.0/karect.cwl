class: CommandLineTool
id: karect.cwl
inputs:
- id: in_please
  doc: 'the tool you want to run: (correct-align-eval-merge).'
  type: string?
  inputBinding:
    prefix: -Please
- id: in_run
  doc: "\"karect -[correct|align|eval|merge]\" to find information about how to run\
    \ a specific tool.\n1) correct: a tool to correct assembly reads from fasta/fastq\
    \ files.\n2) align:   a tool to align original assembly reads as pre-processing\
    \ for evaluation.\n3) eval:    a tool to evaluate assembly reads correction.\n\
    4) merge:   a tool to concatenate fasta/fastq files."
  type: boolean?
  inputBinding:
    prefix: -Run
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- karect
