class: CommandLineTool
id: phyluce_assembly_copy_trinity_symlinks.cwl
inputs:
- id: in_assembly_symlinks
  doc: "The location of the trinity symlinks (trinity-\nassemblies/contigs)"
  type: string
  inputBinding:
    prefix: --assembly-symlinks
- id: in_conf
  doc: The configuration file to use
  type: File
  inputBinding:
    prefix: --conf
- id: in_output
  doc: The output folder
  type: Directory
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The output folder
  type: Directory
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- phyluce_assembly_copy_trinity_symlinks
