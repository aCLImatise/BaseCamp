class: CommandLineTool
id: intersect_assembly_errors.cwl
inputs:
- id: in_reference_should_fasta
  doc: "reference, should be a fasta file. If correspondng bwa indices\ndo not exist\
    \ they will be created. (required)."
  type: boolean
  inputBinding:
    prefix: -r
- id: in_fasta_assemblies_required
  doc: fasta input assemblies (required).
  type: boolean
  inputBinding:
    prefix: -i
- id: in_alignment_threads_default
  doc: 'alignment threads (default: 1).'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_output_directory_default
  doc: 'output directory (default: compare_assm).'
  type: Directory
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory_default
  doc: 'output directory (default: compare_assm).'
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory_default)
cwlVersion: v1.1
baseCommand:
- intersect_assembly_errors
