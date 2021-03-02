class: CommandLineTool
id: kaiju2table.cwl
inputs:
- id: in_name_output_file
  doc: Name of output file.
  type: File?
  inputBinding:
    prefix: -o
- id: in_name_nodesdmp_file
  doc: Name of nodes.dmp file
  type: File?
  inputBinding:
    prefix: -t
- id: in_name_namesdmp_file
  doc: Name of names.dmp file.
  type: File?
  inputBinding:
    prefix: -n
- id: in_taxonomic_rank_be
  doc: 'Taxonomic rank, must be one of: phylum, class, order, family, genus, species'
  type: string?
  inputBinding:
    prefix: -r
- id: in_number_in_denoting
  doc: 'Number in [0, 100], denoting the minimum required percentage for the taxon
    (except viruses) to be reported (default: 0.0)'
  type: double?
  inputBinding:
    prefix: -m
- id: in_integer_number_denoting
  doc: 'Integer number > 0, denoting the minimum required number of reads for the
    taxon (except viruses) to be reported (default: 0)'
  type: long?
  inputBinding:
    prefix: -c
- id: in_expand_viruses_shown
  doc: Expand viruses, which are always shown as full taxon path and read counts are
    not summarized in higher taxonomic levels.
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_unclassified_reads_counted
  doc: Unclassified reads are not counted for the total reads when calculating percentages
    for classified reads.
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_print_full_taxon
  doc: Print full taxon path.
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_print_taxon_path
  doc: "Print taxon path containing only ranks specified by a comma-separated list,\n\
    for example: superkingdom,phylum,class,order,family,genus,species"
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_enable_verbose_output
  doc: Enable verbose output.
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_input_one_dot_tsv
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_output_file
  doc: Name of output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_name_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- kaiju2table
