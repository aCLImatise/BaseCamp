#!/usr/bin/env cwl-runner

baseCommand:
- muscle
class: CommandLineTool
cwlVersion: v1.0
id: muscle
inputs:
- doc: Input file in FASTA format (default stdin)
  id: in
  inputBinding:
    prefix: -in
  type: string
- doc: Output alignment in FASTA format (default stdout)
  id: out
  inputBinding:
    prefix: -out
  type: string
- doc: Find diagonals (faster for similar sequences)
  id: diags
  inputBinding:
    prefix: -diags
  type: boolean
- doc: Maximum number of iterations (integer, default 16)
  id: maxiter_s
  inputBinding:
    prefix: -maxiters
  type: string
- doc: Maximum time to iterate in hours (default no limit)
  id: max_hours
  inputBinding:
    prefix: -maxhours
  type: string
- doc: Write output in HTML format (default FASTA)
  id: html
  inputBinding:
    prefix: -html
  type: boolean
- doc: Write output in GCG MSF format (default FASTA)
  id: msf
  inputBinding:
    prefix: -msf
  type: boolean
- doc: Write output in CLUSTALW format (default FASTA)
  id: clw
  inputBinding:
    prefix: -clw
  type: boolean
- doc: As -clw, with 'CLUSTAL W (1.81)' header
  id: cl_wstrict
  inputBinding:
    prefix: -clwstrict
  type: boolean
- doc: '[a] <logfile>  Log to file (append if -loga, overwrite if -log)'
  id: log
  inputBinding:
    prefix: -log
  type: boolean
- doc: Do not write progress messages to stderr
  id: quiet
  inputBinding:
    prefix: -quiet
  type: boolean
- doc: Display version information and exit
  id: version
  inputBinding:
    prefix: -version
  type: boolean
