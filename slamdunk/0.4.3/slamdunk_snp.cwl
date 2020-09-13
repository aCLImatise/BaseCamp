class: CommandLineTool
id: ../../../slamdunk_snp.cwl
inputs:
- id: in_output_dir
  doc: Output directory for mapped BAM files.
  type: Directory
  inputBinding:
    prefix: --outputDir
- id: in_reference
  doc: Reference fasta file
  type: File
  inputBinding:
    prefix: --reference
- id: in_min_coverage
  doc: 'Minimimum coverage to call variant (default: 10)'
  type: long
  inputBinding:
    prefix: --min-coverage
- id: in_var_fraction
  doc: "Minimimum variant fraction to call variant (default:\n0.8)"
  type: double
  inputBinding:
    prefix: --var-fraction
- id: in_threads
  doc: "Thread number (default: 1)\n"
  type: long
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Output directory for mapped BAM files.
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- slamdunk
- snp
