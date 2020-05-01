#!/usr/bin/env cwl-runner

baseCommand:
- index_blast_pairs.remove_gene_pair.pl
class: CommandLineTool
cwlVersion: v1.0
id: index_blast_pairs.remove_gene_pair.pl
inputs:
- doc: ''
  id: ct_at_genome_lib_dir
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: fusion_name
  inputBinding:
    position: 1
  type: string
