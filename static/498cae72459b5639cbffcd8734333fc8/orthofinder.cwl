class: CommandLineTool
id: orthofinder.cwl
inputs:
- id: in_number_parallel_sequence
  doc: Number of parallel sequence search threads [Default = 8]
  type: long?
  inputBinding:
    prefix: -t
- id: in_number_parallel_analysis
  doc: Number of parallel analysis threads [Default = 1]
  type: long?
  inputBinding:
    prefix: -a
- id: in_method_gene_tree
  doc: "Method for gene tree inference. Options 'dendroblast' & 'msa'\n[Default =\
    \ dendroblast]"
  type: string?
  inputBinding:
    prefix: -M
- id: in_sequence_search_program
  doc: "Sequence search program [Default = diamond]\nOptions: blast, diamond, blast_gz,\
    \ mmseqs"
  type: string?
  inputBinding:
    prefix: -S
- id: in_msa_program_requires
  doc: "MSA program, requires '-M msa' [Default = mafft]\nOptions: mafft, muscle"
  type: string?
  inputBinding:
    prefix: -A
- id: in_tree_inference_method
  doc: "Tree inference method, requires '-M msa' [Default = fasttree]\nOptions: fasttree,\
    \ raxml, raxml-ng, iqtree"
  type: string?
  inputBinding:
    prefix: -T
- id: in_userspecified_rooted_species
  doc: User-specified rooted species tree
  type: File?
  inputBinding:
    prefix: -s
- id: in_mcl_inflation_parameter
  doc: MCL inflation parameter [Default = 1.5]
  type: long?
  inputBinding:
    prefix: -I
- id: in_info_outputting_results
  doc: Info for outputting results in OrthoXML format
  type: File?
  inputBinding:
    prefix: -x
- id: in_write_temporary_files
  doc: Write the temporary pickle files to <dir>
  type: string?
  inputBinding:
    prefix: -p
- id: in_only_perform_oneway
  doc: Only perform one-way sequence search
  type: boolean?
  inputBinding:
    prefix: '-1'
- id: in_add_species_names
  doc: Don't add species names to sequence IDs
  type: boolean?
  inputBinding:
    prefix: -X
- id: in_name_append_directory
  doc: Name to append to the results directory
  type: Directory?
  inputBinding:
    prefix: -n
- id: in_nondefault_results_directory
  doc: Non-default results directory
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_op
  doc: Stop after preparing input files for BLAST
  type: boolean?
  inputBinding:
    prefix: -op
- id: in_og
  doc: Stop after inferring orthogroups
  type: boolean?
  inputBinding:
    prefix: -og
- id: in_os
  doc: "Stop after writing sequence files for orthogroups\n(requires '-M msa')"
  type: boolean?
  inputBinding:
    prefix: -os
- id: in_oa
  doc: "Stop after inferring alignments for orthogroups\n(requires '-M msa')"
  type: boolean?
  inputBinding:
    prefix: -oa
- id: in_ot
  doc: Stop after inferring gene trees for orthogroups
  type: boolean?
  inputBinding:
    prefix: -ot
- id: in_dir_start_orthofinder
  doc: <dir>         Start OrthoFinder from pre-computed BLAST results in <dir>
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_fg
  doc: Start OrthoFinder from pre-computed orthogroups in <dir>
  type: string?
  inputBinding:
    prefix: -fg
- id: in_ft
  doc: Start OrthoFinder from pre-computed gene trees in <dir>
  type: string?
  inputBinding:
    prefix: -ft
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- orthofinder
