class: CommandLineTool
id: phyluce_assembly_copy_trinity_symlinks.cwl
inputs:
- id: assembly_symlinks
  doc: The location of the trinity symlinks (trinity- assemblies/contigs)
  type: string
  inputBinding:
    prefix: --assembly-symlinks
- id: conf
  doc: The configuration file to use
  type: string
  inputBinding:
    prefix: --conf
- id: output
  doc: The output folder
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_assembly_copy_trinity_symlinks
