class: CommandLineTool
id: run_prokka.cwl
inputs:
- id: in_threads
  doc: number of threads to use (default=1)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_verbose
  doc: print additional output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_input
  doc: input fasta files
  type: string[]
  inputBinding:
    prefix: --input
- id: in_out_dir
  doc: location of an output directory
  type: Directory?
  inputBinding:
    prefix: --out_dir
- id: in_force
  doc: overwrite old commands
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_add_pro_kk_a_cmds
  doc: "additional commands to supply to Prokka (these are not\nchecked!)"
  type: string?
  inputBinding:
    prefix: --add_prokka_cmds
- id: in_num_training
  doc: "number of genomes to use in training prodigal\n(default=10)\n"
  type: long?
  inputBinding:
    prefix: --num_training
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: location of an output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- run_prokka
