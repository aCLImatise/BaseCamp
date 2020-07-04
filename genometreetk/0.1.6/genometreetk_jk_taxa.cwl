class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/genometreetk_jk_taxa.cwl
inputs:
- id: out_group_ids
  doc: file indicating outgroup taxa
  type: string
  inputBinding:
    prefix: --outgroup_ids
- id: model
  doc: 'model of evolution to use (default: wag)'
  type: string
  inputBinding:
    prefix: --model
- id: perc_tax_a
  doc: 'percentage of taxa to keep (default: 0.5)'
  type: string
  inputBinding:
    prefix: --perc_taxa
- id: num_replicates
  doc: 'number of jackknife replicates to perform (default: 100)'
  type: string
  inputBinding:
    prefix: --num_replicates
- id: cpus
  doc: 'number of cpus (default: 1)'
  type: string
  inputBinding:
    prefix: --cpus
- id: silent
  doc: suppress output
  type: boolean
  inputBinding:
    prefix: --silent
- id: input_tree
  doc: tree inferred from original data
  type: string
  inputBinding:
    position: 0
- id: msa_file
  doc: file containing multiple sequence alignment
  type: string
  inputBinding:
    position: 1
- id: output_dir
  doc: output directory
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- genometreetk
- jk_taxa
