class: CommandLineTool
id: phylophlan_write_config_file.cwl
inputs:
- id: in_output
  doc: "Specify the output file where to write the\nconfigurations (default: None)"
  type: File
  inputBinding:
    prefix: --output
- id: in_db_type
  doc: "Specify the type of the database, where \"n\" stands for\nnucleotides and\
    \ \"a\" for amino acids (default: None)"
  type: string
  inputBinding:
    prefix: --db_type
- id: in_db_dna
  doc: "Add the \"db_dna\" section of the selected software that\nwill be used for\
    \ building the indexed database\n(default: None)"
  type: string
  inputBinding:
    prefix: --db_dna
- id: in_db_aa
  doc: "Add the \"db_aa\" section of the selected software that\nwill be used for\
    \ building the indexed database\n(default: None)"
  type: string
  inputBinding:
    prefix: --db_aa
- id: in_map_dna
  doc: "Add the \"map_dna\" section of the selected software\nthat will be used for\
    \ mapping the database against the\ninput genomes (default: None)"
  type: string
  inputBinding:
    prefix: --map_dna
- id: in_map_aa
  doc: "Add the \"map_aa\" section of the selected software that\nwill be used for\
    \ mapping the database against the\ninput proteomes (default: None)"
  type: string
  inputBinding:
    prefix: --map_aa
- id: in_msa
  doc: "Add the \"msa\" section of the selected software that\nwill be used for producing\
    \ the MSAs (default: None)"
  type: string
  inputBinding:
    prefix: --msa
- id: in_trim
  doc: "Add the \"trim\" section of the selected software that\nwill be used for the\
    \ gappy regions removal of the MSAs\n(default: None)"
  type: string
  inputBinding:
    prefix: --trim
- id: in_gene_tree_one
  doc: "Add the \"gene_tree1\" section of the selected software\nthat will be used\
    \ for building the phylogenies for the\nmarkers in the database (default: None)"
  type: string
  inputBinding:
    prefix: --gene_tree1
- id: in_gene_tree_two
  doc: "Add the \"gene_tree2\" section of the selected software\nthat will be used\
    \ for refining the phylogenies\npreviously built with what specified in the\n\"\
    gene_tree1\" section (default: None)"
  type: string
  inputBinding:
    prefix: --gene_tree2
- id: in_tree_one
  doc: "Add the \"tree1\" section of the selected software that\nwill be used for\
    \ building the first phylogeny\n(default: None)"
  type: string
  inputBinding:
    prefix: --tree1
- id: in_tree_two
  doc: "Add the \"tree2\" section of the selected software that\nwill be used for\
    \ refining the phylogeny previously\nbuilt with what specified in the \"tree1\"\
    \ section\n(default: None)"
  type: string
  inputBinding:
    prefix: --tree2
- id: in_absolute_path
  doc: "Write the absolute path to the executable instead of\nthe executable name\
    \ as found in the system path\nenvironment (default: False)"
  type: boolean
  inputBinding:
    prefix: --absolute_path
- id: in_force_nucleotides
  doc: "If specified sets parameters for phylogenetic analysis\nsoftware so that they\
    \ use nucleotide sequences, even\nin the case of a database of amino acids (default:\n\
    None)"
  type: boolean
  inputBinding:
    prefix: --force_nucleotides
- id: in_overwrite
  doc: 'Overwrite output file if it exists (default: False)'
  type: File
  inputBinding:
    prefix: --overwrite
- id: in_verbose
  doc: 'Prints more stuff (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Specify the output file where to write the\nconfigurations (default: None)"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
- id: out_overwrite
  doc: 'Overwrite output file if it exists (default: False)'
  type: File
  outputBinding:
    glob: $(inputs.in_overwrite)
cwlVersion: v1.1
baseCommand:
- phylophlan_write_config_file
