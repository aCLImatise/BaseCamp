class: CommandLineTool
id: ../../../motus_calc_motu.cwl
inputs:
- id: str_sample_name
  doc: STR   sample name
  type: boolean
  inputBinding:
    prefix: -n
- id: file_provide_table
  doc: FILE  provide the mgc abundance table
  type: boolean
  inputBinding:
    prefix: -i
- id: db
  doc: provide a database directory
  type: string
  inputBinding:
    prefix: -db
- id: file_output_file
  doc: FILE  output file name [stdout]
  type: boolean
  inputBinding:
    prefix: -o
- id: profile_only_species
  doc: profile only reference species (ref_mOTUs)
  type: boolean
  inputBinding:
    prefix: -e
- id: print_result_biom
  doc: print result in BIOM format
  type: boolean
  inputBinding:
    prefix: -B
- id: str_print_result
  doc: 'STR   print result in CAMI format (BioBoxes format 0.9.1) Values: [precision,
    recall, parenthesis]'
  type: boolean
  inputBinding:
    prefix: -C
- id: print_taxonomy_levels
  doc: print all taxonomy levels together
  type: boolean
  inputBinding:
    prefix: -A
- id: print_result_counts
  doc: print result as counts instead of relative abundances
  type: boolean
  inputBinding:
    prefix: -c
- id: print_ncbi_i
  doc: print NCBI id
  type: boolean
  inputBinding:
    prefix: -p
- id: print_full_name
  doc: print the full name of the species
  type: boolean
  inputBinding:
    prefix: -u
- id: print_full_taxonomy
  doc: print the full rank taxonomy
  type: boolean
  inputBinding:
    prefix: -q
- id: str_taxonomic_level
  doc: 'STR   taxonomic level [mOTU] Values: [kingdom, phylum, class, order, family,
    genus, mOTU]'
  type: boolean
  inputBinding:
    prefix: -k
- id: int_number_marker
  doc: 'INT   number of marker genes cutoff: 1=higher recall, 10=higher precision
    [3]'
  type: boolean
  inputBinding:
    prefix: -g
- id: int_level_error
  doc: 'INT   verbose level: 1=error, 2=warning, 3=message, 4+=debugging [3]'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- motus
- calc_motu
