class: CommandLineTool
id: taxaranks.cwl
inputs:
- id: in_file_be_list
  doc: "A file can be a list of ncbi taxa id or species names (or higher\nranks, e.g.\
    \ Family, Order), or a mixture of them."
  type: File?
  inputBinding:
    prefix: -i
- id: in_outfile
  doc: outfile
  type: File?
  inputBinding:
    prefix: -o
- id: in_also_print_taxid
  doc: Also print out the taxid for each rank
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_also_print_records
  doc: "Also print out the records without lineage information found to\nthe '-o <file>'"
  type: File?
  inputBinding:
    prefix: -e
- id: in_verbose_output
  doc: verbose output
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_also_print_records
  doc: "Also print out the records without lineage information found to\nthe '-o <file>'"
  type: File?
  outputBinding:
    glob: $(inputs.in_also_print_records)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/taxonomy_ranks:0.0.10--py_0
cwlVersion: v1.1
baseCommand:
- taxaranks
