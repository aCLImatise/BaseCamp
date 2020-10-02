class: CommandLineTool
id: genometreetk_jk_taxa.cwl
inputs:
- id: in_out_group_ids
  doc: file indicating outgroup taxa
  type: File
  inputBinding:
    prefix: --outgroup_ids
- id: in_model
  doc: 'model of evolution to use (default: wag)'
  type: string
  inputBinding:
    prefix: --model
- id: in_perc_tax_a
  doc: 'percentage of taxa to keep (default: 0.5)'
  type: double
  inputBinding:
    prefix: --perc_taxa
- id: in_num_replicates
  doc: "number of jackknife replicates to perform (default:\n100)"
  type: long
  inputBinding:
    prefix: --num_replicates
- id: in_cpus
  doc: 'number of cpus (default: 1)'
  type: long
  inputBinding:
    prefix: --cpus
- id: in_silent
  doc: suppress output
  type: boolean
  inputBinding:
    prefix: --silent
- id: in_input_tree
  doc: tree inferred from original data
  type: string
  inputBinding:
    position: 0
- id: in_msa_file
  doc: file containing multiple sequence alignment
  type: string
  inputBinding:
    position: 1
- id: in_output_dir
  doc: output directory
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- genometreetk
- jk_taxa
