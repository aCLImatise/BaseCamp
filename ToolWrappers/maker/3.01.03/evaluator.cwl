class: CommandLineTool
id: evaluator.cwl
inputs:
- id: in_genome_gff
  doc: Specify the maker gff file to evaluate.
  type: File?
  inputBinding:
    prefix: -genome_gff
- id: in_model_gff
  doc: <file>  Specify the external gff file to evaluate.
  type: boolean?
  inputBinding:
    prefix: -model_gff
- id: in_genome
  doc: "<file>  Specify the genome fasta file.  This if optional if the\nfasta entries\
    \ are also found in the gff file."
  type: boolean?
  inputBinding:
    prefix: -genome
- id: in_rm_off
  doc: '|R           Turns all repeat masking off.'
  type: boolean?
  inputBinding:
    prefix: -RM_off
- id: in_retry
  doc: <integer>  Rerun failed contigs up to the specified count.
  type: boolean?
  inputBinding:
    prefix: -retry
- id: in_cpus
  doc: '|c  <integer>  Tells how many cpus to use for BLAST analysis.'
  type: boolean?
  inputBinding:
    prefix: -cpus
- id: in_force
  doc: "|f            Forces program to delete old files before running again.\nThis\
    \ will require all blast analyses to be rerun."
  type: boolean?
  inputBinding:
    prefix: -force
- id: in_again
  doc: '|a            Caculate all output files again even if no settings have'
  type: boolean?
  inputBinding:
    prefix: -again
- id: in_ctl
  doc: Generate empty control files in the current directory.
  type: boolean?
  inputBinding:
    prefix: -CTL
- id: in_changed_dot
  doc: -quiet|q            Silences most of the status messages.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/maker:3.01.03--pl526hb8757ab_0
cwlVersion: v1.1
baseCommand:
- evaluator
