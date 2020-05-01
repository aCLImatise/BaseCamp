#!/usr/bin/env cwl-runner

baseCommand:
- find_fusion_genes_psl2.py
class: CommandLineTool
cwlVersion: v1.0
id: find_fusion_genes_psl2.py
inputs:
- doc: The input file in PSL format containing the reads/contigs uniquely mapped on
    fusion genes.
  id: input_mappings
  inputBinding:
    prefix: --input_mappings
  type: string
- doc: A database containing the genes positions on the genome, e.g. 'ensembl/genes_positions_ensembl.txt'.
  id: input_genes_positions
  inputBinding:
    prefix: --input_genes_positions
  type: string
- doc: A FAST file containing the sequences of the gene-gene combinations used for
    finding fusion genes, e.g. 'gene-gene.fa'.
  id: input_gene_gene_fast_a
  inputBinding:
    prefix: --input_genegene_fasta
  type: string
- doc: The input database used for linking ENSEMBL GENE ID to HUGO gene names, e.g.
    'genes_info_ensembl.txt'.
  id: input_hugo
  inputBinding:
    prefix: --input_hugo
  type: string
- doc: The threshold for matches above which the contigs which align are taking into
    consideration. Default is '0.75'.
  id: threshold_matches
  inputBinding:
    prefix: --threshold_matches
  type: string
- doc: All alignments having strictly more mismatches will be removed. Default is
    '1000'.
  id: mismatches
  inputBinding:
    prefix: --mismatches
  type: string
- doc: The threshold for the minimum length of the read overlap over the fusion point
    (i.e. overhang/anchor). Default is '30'.
  id: threshold_overlap
  inputBinding:
    prefix: --threshold_overlap
  type: string
- doc: The separator string to be used for marking the breakpoint in the fusion junction.
  id: separator
  inputBinding:
    prefix: --separator
  type: string
- doc: A text file containg a report regarding new candidate fusion genes.
  id: output
  inputBinding:
    prefix: --output
  type: string
