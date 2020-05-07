class: CommandLineTool
id: phylophlan_write_config_file.cwl
inputs:
- id: output
  doc: 'Specify the output file where to write the configurations (default: None)'
  type: string
  inputBinding:
    prefix: --output
- id: db_type
  doc: 'Specify the type of the database, where "n" stands for nucleotides and "a"
    for amino acids (default: None)'
  type: string
  inputBinding:
    prefix: --db_type
- id: db_dna
  doc: 'Add the "db_dna" section of the selected software that will be used for building
    the indexed database (default: None)'
  type: string
  inputBinding:
    prefix: --db_dna
- id: db_aa
  doc: 'Add the "db_aa" section of the selected software that will be used for building
    the indexed database (default: None)'
  type: string
  inputBinding:
    prefix: --db_aa
- id: map_dna
  doc: 'Add the "map_dna" section of the selected software that will be used for mapping
    the database against the input genomes (default: None)'
  type: string
  inputBinding:
    prefix: --map_dna
- id: map_aa
  doc: 'Add the "map_aa" section of the selected software that will be used for mapping
    the database against the input proteomes (default: None)'
  type: string
  inputBinding:
    prefix: --map_aa
- id: msa
  doc: 'Add the "msa" section of the selected software that will be used for producing
    the MSAs (default: None)'
  type: string
  inputBinding:
    prefix: --msa
- id: trim
  doc: 'Add the "trim" section of the selected software that will be used for the
    gappy regions removal of the MSAs (default: None)'
  type: string
  inputBinding:
    prefix: --trim
- id: gene_tree1
  doc: 'Add the "gene_tree1" section of the selected software that will be used for
    building the phylogenies for the markers in the database (default: None)'
  type: string
  inputBinding:
    prefix: --gene_tree1
- id: gene_tree2
  doc: 'Add the "gene_tree2" section of the selected software that will be used for
    refining the phylogenies previously built with what specified in the "gene_tree1"
    section (default: None)'
  type: string
  inputBinding:
    prefix: --gene_tree2
- id: tree1
  doc: 'Add the "tree1" section of the selected software that will be used for building
    the first phylogeny (default: None)'
  type: string
  inputBinding:
    prefix: --tree1
- id: tree2
  doc: 'Add the "tree2" section of the selected software that will be used for refining
    the phylogeny previously built with what specified in the "tree1" section (default:
    None)'
  type: string
  inputBinding:
    prefix: --tree2
- id: absolute_path
  doc: 'Write the absolute path to the executable instead of the executable name as
    found in the system path environment (default: False)'
  type: boolean
  inputBinding:
    prefix: --absolute_path
- id: force_nucleotides
  doc: 'If specified sets parameters for phylogenetic analysis software so that they
    use nucleotide sequences, even in the case of a database of amino acids (default:
    None)'
  type: boolean
  inputBinding:
    prefix: --force_nucleotides
- id: overwrite
  doc: 'Overwrite output file if it exists (default: False)'
  type: boolean
  inputBinding:
    prefix: --overwrite
- id: verbose
  doc: 'Prints more stuff (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- phylophlan_write_config_file
