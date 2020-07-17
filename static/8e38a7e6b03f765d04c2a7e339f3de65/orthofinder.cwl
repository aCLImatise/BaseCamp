class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/orthofinder.cwl
inputs:
- id: number_parallel_sequence
  doc: Number of parallel sequence search threads [Default = 8]
  type: long
  inputBinding:
    prefix: -t
- id: number_parallel_analysis
  doc: Number of parallel analysis threads [Default = 1]
  type: long
  inputBinding:
    prefix: -a
- id: method_gene_tree
  doc: Method for gene tree inference. Options 'dendroblast' & 'msa' [Default = dendroblast]
  type: string
  inputBinding:
    prefix: -M
- id: sequence_search_program
  doc: 'Sequence search program [Default = diamond] Options: blast, diamond, blast_gz,
    mmseqs'
  type: string
  inputBinding:
    prefix: -S
- id: msa_program_requires
  doc: "MSA program, requires '-M msa' [Default = mafft] Options: mafft, muscle"
  type: string
  inputBinding:
    prefix: -A
- id: tree_inference_method
  doc: "Tree inference method, requires '-M msa' [Default = fasttree] Options: fasttree,\
    \ raxml, raxml-ng, iqtree"
  type: string
  inputBinding:
    prefix: -T
- id: userspecified_rooted_species
  doc: User-specified rooted species tree
  type: File
  inputBinding:
    prefix: -s
- id: mcl_inflation_parameter
  doc: MCL inflation parameter [Default = 1.5]
  type: long
  inputBinding:
    prefix: -I
- id: info_outputting_results
  doc: Info for outputting results in OrthoXML format
  type: File
  inputBinding:
    prefix: -x
- id: write_temporary_files
  doc: Write the temporary pickle files to <dir>
  type: string
  inputBinding:
    prefix: -p
- id: only_perform_search
  doc: 'Only perform one-way sequence search '
  type: boolean
  inputBinding:
    prefix: '-1'
- id: add_species_names
  doc: Don't add species names to sequence IDs
  type: boolean
  inputBinding:
    prefix: -X
- id: name_append_results
  doc: Name to append to the results directory
  type: string
  inputBinding:
    prefix: -n
- id: nondefault_results_directory
  doc: Non-default results directory
  type: string
  inputBinding:
    prefix: -o
- id: op
  doc: Stop after preparing input files for BLAST
  type: boolean
  inputBinding:
    prefix: -op
- id: og
  doc: Stop after inferring orthogroups
  type: boolean
  inputBinding:
    prefix: -og
- id: os
  doc: Stop after writing sequence files for orthogroups (requires '-M msa')
  type: boolean
  inputBinding:
    prefix: -os
- id: oa
  doc: Stop after inferring alignments for orthogroups (requires '-M msa')
  type: boolean
  inputBinding:
    prefix: -oa
- id: ot
  doc: 'Stop after inferring gene trees for orthogroups '
  type: boolean
  inputBinding:
    prefix: -ot
- id: dir_start_orthofinder
  doc: <dir>         Start OrthoFinder from pre-computed BLAST results in <dir>
  type: boolean
  inputBinding:
    prefix: -b
- id: fg
  doc: Start OrthoFinder from pre-computed orthogroups in <dir>
  type: string
  inputBinding:
    prefix: -fg
- id: ft
  doc: Start OrthoFinder from pre-computed gene trees in <dir>
  type: string
  inputBinding:
    prefix: -ft
- id: analysis
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: on
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: fast_a
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: format
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: proteomes
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: dir
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs: []
cwlVersion: v1.1
baseCommand:
- orthofinder
