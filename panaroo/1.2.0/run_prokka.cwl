class: CommandLineTool
id: run_prokka.cwl
inputs:
- id: threads
  doc: number of threads to use (default=1)
  type: string
  inputBinding:
    prefix: --threads
- id: verbose
  doc: print additional output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: input
  doc: input fasta files
  type: string[]
  inputBinding:
    prefix: --input
- id: out_dir
  doc: location of an output directory
  type: string
  inputBinding:
    prefix: --out_dir
- id: force
  doc: overwrite old commands
  type: boolean
  inputBinding:
    prefix: --force
- id: add_pro_kk_a_cmds
  doc: additional commands to supply to Prokka (these are not checked!)
  type: string
  inputBinding:
    prefix: --add_prokka_cmds
- id: num_training
  doc: number of genomes to use in training prodigal (default=10)
  type: string
  inputBinding:
    prefix: --num_training
outputs: []
cwlVersion: v1.1
baseCommand:
- run_prokka
