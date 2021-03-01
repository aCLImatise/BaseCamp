class: CommandLineTool
id: gff3_merge.cwl
inputs:
- id: in_location_log_file
  doc: location of the MAKER datastore index log file.
  type: File?
  inputBinding:
    prefix: -d
- id: in_base_name_output
  doc: base name for the output files.
  type: string?
  inputBinding:
    prefix: -o
- id: in_stdout_for_output
  doc: STDOUT for output.
  type: string?
  inputBinding:
    prefix: -s
- id: in_write_maker_models
  doc: write MAKER gene models to the file, and ignore evidence.
  type: File?
  inputBinding:
    prefix: -g
- id: in_print_fasta_sequence
  doc: not print fasta sequence in footer
  type: string?
  inputBinding:
    prefix: -n
- id: in_legacy_annotation_sets
  doc: "legacy annotation sets (ignores already having seen\nfeatures more than once\
    \ for the same contig)\n"
  type: string?
  inputBinding:
    prefix: -l
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/maker:3.01.03--pl526hb8757ab_0
cwlVersion: v1.1
baseCommand:
- gff3_merge
