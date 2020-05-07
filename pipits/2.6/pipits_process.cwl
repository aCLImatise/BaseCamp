class: CommandLineTool
id: pipits_process.cwl
inputs:
- id: i
  doc: '[REQUIRED] ITS sequences in FASTA. Typically output from pipits_funits'
  type: File
  inputBinding:
    prefix: -i
- id: o
  doc: '[REQUIRED] Directory to output results.'
  type: string
  inputBinding:
    prefix: -o
- id: d
  doc: 'VSEARCH - Identity threshold [default: 0.97]'
  type: double
  inputBinding:
    prefix: -d
- id: c
  doc: 'RDP assignment confidence threshold - RDP Classifier confidence threshold
    for output [default: 0.85]'
  type: double
  inputBinding:
    prefix: -c
- id: l
  doc: '[REQUIRED] Sample list file. Generated with PIPITS_GETREADPAIRSLIST prior
    to PIPITS_PREP'
  type: string
  inputBinding:
    prefix: -l
- id: include_unique_seqs
  doc: "[REQUIRED] PIPITS by default removes unique sequences before clustering. This\
    \ means you wouldn't have any singletons. If you want singletons, then choose\
    \ this option. It can take much longer to process."
  type: boolean
  inputBinding:
    prefix: --includeuniqueseqs
- id: r
  doc: Retain intermediate files (Beware intermediate files use excessive disk space!)
  type: boolean
  inputBinding:
    prefix: -r
- id: v
  doc: Verbose mode
  type: boolean
  inputBinding:
    prefix: -v
- id: t
  doc: 'Number of Threads [default: 1]'
  type: long
  inputBinding:
    prefix: -t
- id: xms
  doc: The minimum size, in bytes, of the memory allocation pool for JVM
  type: long
  inputBinding:
    prefix: --Xms
- id: x_mx
  doc: The maximum size, in bytes, of the memory allocation pool for JVM
  type: long
  inputBinding:
    prefix: --Xmx
- id: war_cup
  doc: Also classify using Warcup database. The most recent warcup db will be downloaded
    automatically.
  type: boolean
  inputBinding:
    prefix: --warcup
- id: unite
  doc: '{04.02.2020,02.02.2019,01.12.2017,28.06.2017} UNITE db version to be used
    - PIPITS will download db automaticlly. Leaving this option out will default to
    the most recent version of UNITE available to PIPITS. Currently 02_02_2019.'
  type: boolean
  inputBinding:
    prefix: --unite
outputs: []
cwlVersion: v1.1
baseCommand:
- pipits_process
