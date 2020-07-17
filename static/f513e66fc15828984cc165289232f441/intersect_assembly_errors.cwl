class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/intersect_assembly_errors.cwl
inputs:
- id: reference_should_fasta
  doc: reference, should be a fasta file. If correspondng bwa indices do not exist
    they will be created. (required).
  type: boolean
  inputBinding:
    prefix: -r
- id: fasta_input_assemblies
  doc: fasta input assemblies (required).
  type: boolean
  inputBinding:
    prefix: -i
- id: alignment_threads_default
  doc: 'alignment threads (default: 1).'
  type: boolean
  inputBinding:
    prefix: -t
- id: output_directory_default
  doc: 'output directory (default: compare_assm).'
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- intersect_assembly_errors
