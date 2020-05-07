class: CommandLineTool
id: transrate.cwl
inputs:
- id: assembly
  doc: Assembly file(s) in FASTA format, comma-separated
  type: string
  inputBinding:
    prefix: --assembly
- id: left
  doc: Left reads file(s) in FASTQ format, comma-separated
  type: string
  inputBinding:
    prefix: --left
- id: right
  doc: Right reads file(s) in FASTQ format, comma-separated
  type: string
  inputBinding:
    prefix: --right
- id: reference
  doc: Reference proteome or transcriptome file in FASTA format
  type: string
  inputBinding:
    prefix: --reference
- id: threads
  doc: 'Number of threads to use (default: 8)'
  type: string
  inputBinding:
    prefix: --threads
- id: merge_assemblies
  doc: Merge best contigs from multiple assemblies into file
  type: string
  inputBinding:
    prefix: --merge-assemblies
- id: output
  doc: 'Directory where results are output (will be created) (default: transrate_results)'
  type: string
  inputBinding:
    prefix: --output
- id: loglevel
  doc: 'Log level. One of [error, info, warn, debug] (default: info)'
  type: string
  inputBinding:
    prefix: --loglevel
- id: install_deps
  doc: Install any missing dependencies. One of [read, ref, all]
  type: string
  inputBinding:
    prefix: --install-deps
- id: examples
  doc: Show some example commands with explanations
  type: boolean
  inputBinding:
    prefix: --examples
outputs: []
cwlVersion: v1.1
baseCommand:
- transrate
