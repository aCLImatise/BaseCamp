class: CommandLineTool
id: ../../../kaiju_addTaxonNames.cwl
inputs:
- id: in_name_input_file
  doc: Name of input file
  type: File
  inputBinding:
    prefix: -i
- id: in_name_output_file
  doc: Name of output file. If not specified, output will be printed to STDOUT.
  type: File
  inputBinding:
    prefix: -o
- id: in_name_nodesdmp_file
  doc: Name of nodes.dmp file
  type: File
  inputBinding:
    prefix: -t
- id: in_name_namesdmp_file
  doc: Name of names.dmp file.
  type: File
  inputBinding:
    prefix: -n
- id: in_unclassified_reads_contained
  doc: Unclassified reads are not contained in the output.
  type: boolean
  inputBinding:
    prefix: -u
- id: in_print_full_path
  doc: Print full taxon path.
  type: boolean
  inputBinding:
    prefix: -p
- id: in_print_taxon_path
  doc: "Print taxon path containing only ranks specified by a comma-separated list,\n\
    for example: superkingdom,phylum,class,order,family,genus,species"
  type: boolean
  inputBinding:
    prefix: -r
- id: in_enable_verbose_output
  doc: Enable verbose output.
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_output_file
  doc: Name of output file. If not specified, output will be printed to STDOUT.
  type: File
  outputBinding:
    glob: $(inputs.in_name_output_file)
cwlVersion: v1.1
baseCommand:
- kaiju-addTaxonNames
