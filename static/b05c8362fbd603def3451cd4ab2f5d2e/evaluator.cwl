class: CommandLineTool
id: evaluator.cwl
inputs:
- id: mpi_evaluator
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: eval_opts
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: eval_b_opts
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: eval_exe
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: genome_gff
  doc: Specify the maker gff file to evaluate.
  type: File
  inputBinding:
    prefix: -genome_gff
- id: model_gff
  doc: <file>  Specify the external gff file to evaluate.
  type: boolean
  inputBinding:
    prefix: -model_gff
- id: genome
  doc: <file>  Specify the genome fasta file.  This if optional if the fasta entries
    are also found in the gff file.
  type: boolean
  inputBinding:
    prefix: -genome
- id: rm_off
  doc: '|R           Turns all repeat masking off.'
  type: boolean
  inputBinding:
    prefix: -RM_off
- id: retry
  doc: <integer>  Rerun failed contigs up to the specified count.
  type: boolean
  inputBinding:
    prefix: -retry
- id: cpus
  doc: '|c  <integer>  Tells how many cpus to use for BLAST analysis.'
  type: boolean
  inputBinding:
    prefix: -cpus
- id: force
  doc: '|f            Forces program to delete old files before running again. This
    will require all blast analyses to be rerun.'
  type: boolean
  inputBinding:
    prefix: -force
- id: again
  doc: '|a            Caculate all output files again even if no settings have changed.'
  type: boolean
  inputBinding:
    prefix: -again
- id: quiet
  doc: '|q            Silences most of the status messages.'
  type: boolean
  inputBinding:
    prefix: -quiet
- id: ctl
  doc: Generate empty control files in the current directory.
  type: boolean
  inputBinding:
    prefix: -CTL
outputs: []
cwlVersion: v1.1
baseCommand:
- evaluator
