#!/usr/bin/env cwl-runner

baseCommand:
- find_fusion_genes_map.py
class: CommandLineTool
cwlVersion: v1.0
id: find_fusion_genes_map.py
inputs:
- doc: The input file in Bowtie MAP format (sorted by read name, i.e. column number
    1) containing the short reads mapped on the transcripts. This should contain paired-
    end data.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The input text file tab separated format containg gene pairs which should be
    removed from the output fusion- genes list.
  id: filter_gene_pairs
  inputBinding:
    prefix: --filter_gene_pairs
  type: string
- doc: The input text file containing genes (one gene on each line) which should be
    removed from the output fusion- genes list.
  id: filter_genes
  inputBinding:
    prefix: --filter_genes
  type: string
- doc: The input database used for linking ENSEMBL GENE ID to HUGO gene names.
  id: input_hugo
  inputBinding:
    prefix: --input_hugo
  type: string
- doc: The output text tab-separated file containing the candidate fusion genes (the
    genes are sorted alphabetically on the each line).
  id: output_fusion_genes
  inputBinding:
    prefix: --output_fusion_genes
  type: string
- doc: The output text tab-separated file containing the candidate fusion transcripts
    (the genes are sorted alphabetically on the each line).
  id: output_fusion_transcripts
  inputBinding:
    prefix: --output_fusion_transcripts
  type: string
- doc: The output text tab-separated file containing the candidate fusion genes and
    transcripts together with the ids/names of supporting reads.
  id: output_fusion_reads
  inputBinding:
    prefix: --output_fusion_reads
  type: string
- doc: A file containing paths to candidate fusion genes and transcripts together
    with the ids/names of supporting reads.
  id: output_fusion_reads_split
  inputBinding:
    prefix: --output_fusion_reads_split
  type: string
- doc: The output text file containing one each line reads ids of the supporting reads.
  id: output_fusion_reads_simple
  inputBinding:
    prefix: --output_fusion_reads_simple
  type: string
- doc: The output text tab-separated file containing the reads which have their mate
    read not mapped together to the gene name on which they map.
  id: output_missing_mate_reads
  inputBinding:
    prefix: --output_missing_mate_reads
  type: string
