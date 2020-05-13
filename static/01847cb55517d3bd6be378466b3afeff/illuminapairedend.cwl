class: CommandLineTool
id: illuminapairedend.cwl
inputs:
- id: fast_a_output
  doc: Output sequences in obitools fasta format
  type: boolean
  inputBinding:
    prefix: --fasta-output
- id: fast_q_output
  doc: Output sequences in sanger fastq format
  type: boolean
  inputBinding:
    prefix: --fastq-output
- id: eco_pcr_db_output
  doc: Output sequences in ecopcr database format (sequence records are not printed
    on standard output)
  type: string
  inputBinding:
    prefix: --ecopcrdb-output
- id: uppercase
  doc: Print sequences in upper case (default is lower case)
  type: boolean
  inputBinding:
    prefix: --uppercase
outputs: []
cwlVersion: v1.1
baseCommand:
- illuminapairedend
