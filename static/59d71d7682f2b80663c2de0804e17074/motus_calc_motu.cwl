class: CommandLineTool
id: motus_calc_motu.cwl
inputs:
- id: in_sample_name
  doc: sample name
  type: string
  inputBinding:
    prefix: -n
- id: in_provide_mgc_table
  doc: provide the mgc abundance table
  type: File
  inputBinding:
    prefix: -i
- id: in_output_file_name
  doc: output file name [stdout]
  type: File
  inputBinding:
    prefix: -o
- id: in_profile_only_species
  doc: profile only reference species (ref_mOTUs)
  type: boolean
  inputBinding:
    prefix: -e
- id: in_print_result_biom
  doc: print result in BIOM format
  type: boolean
  inputBinding:
    prefix: -B
- id: in_print_result_cami
  doc: "print result in CAMI format (BioBoxes format 0.9.1)\nValues: [precision, recall,\
    \ parenthesis]"
  type: double
  inputBinding:
    prefix: -C
- id: in_print_result_counts
  doc: print result as counts instead of relative abundances
  type: boolean
  inputBinding:
    prefix: -c
- id: in_print_ncbi_i
  doc: print NCBI id
  type: boolean
  inputBinding:
    prefix: -p
- id: in_print_full_name
  doc: print the full name of the species
  type: boolean
  inputBinding:
    prefix: -u
- id: in_print_full_taxonomy
  doc: print the full rank taxonomy
  type: boolean
  inputBinding:
    prefix: -q
- id: in_taxonomic_level_values
  doc: "taxonomic level [mOTU]\nValues: [kingdom, phylum, class, order, family, genus,\
    \ mOTU]"
  type: string
  inputBinding:
    prefix: -k
- id: in_number_marker_genes
  doc: 'number of marker genes cutoff: 1=higher recall, 10=higher precision [3]'
  type: long
  inputBinding:
    prefix: -g
- id: in_verbose_level_error
  doc: 'verbose level: 1=error, 2=warning, 3=message, 4+=debugging [3]'
  type: long
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: output file name [stdout]
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_name)
cwlVersion: v1.1
baseCommand:
- motus
- calc_motu
