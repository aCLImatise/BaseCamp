class: CommandLineTool
id: ../../../kaiju_addTaxonNames.cwl
inputs:
- id: name_input_file
  doc: Name of input file
  type: File
  inputBinding:
    prefix: -i
- id: name_output_file
  doc: Name of output file. If not specified, output will be printed to STDOUT.
  type: File
  inputBinding:
    prefix: -o
- id: name_nodesdmp_file
  doc: Name of nodes.dmp file
  type: File
  inputBinding:
    prefix: -t
- id: name_namesdmp_file
  doc: Name of names.dmp file.
  type: File
  inputBinding:
    prefix: -n
- id: unclassified_reads_contained
  doc: Unclassified reads are not contained in the output.
  type: boolean
  inputBinding:
    prefix: -u
- id: print_full_taxon
  doc: Print full taxon path.
  type: boolean
  inputBinding:
    prefix: -p
- id: print_taxon_path
  doc: 'Print taxon path containing only ranks specified by a comma-separated list,
    for example: superkingdom,phylum,class,order,family,genus,species'
  type: boolean
  inputBinding:
    prefix: -r
- id: enable_verbose_output
  doc: Enable verbose output.
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- kaiju-addTaxonNames
