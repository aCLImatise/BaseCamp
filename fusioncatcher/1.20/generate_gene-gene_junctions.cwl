#!/usr/bin/env cwl-runner

baseCommand:
- generate_gene-gene_junctions.py
class: CommandLineTool
cwlVersion: v1.0
id: generate_gene-gene_junctions.py
inputs:
- doc: The text separated file containing on each line two names of genes.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The FASTA file containg the sequences of all genes.
  id: input_database
  inputBinding:
    prefix: --input_database
  type: string
- doc: Database with exons position on chromosomes, e.g. 'more_exons_ensembl.txt'.
    This is used for filtering the UTRs extensions by removing any extension which
    overlaps with any exons from the database. This is optional.
  id: input_exons
  inputBinding:
    prefix: --input_exons
  type: string
- doc: A FASTA file containing the sequences of the two genes per line concatenated.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: A FASTA file containing the sequences of all genes from the input (a gene will
    appear only once in the output).
  id: output_genes
  inputBinding:
    prefix: --output_genes
  type: string
- doc: An output directory containing FASTA files containing the sequences of the
    two genes per line concatenated. One Fasta file contains one sequence.
  id: output_dir
  inputBinding:
    prefix: --output_dir
  type: string
- doc: A junctions file which can be used further as input to TopHat.
  id: output_top_hat_jun_cs
  inputBinding:
    prefix: --output_tophat_juncs
  type: string
- doc: A text file where it will be written the size of the longest sequence of two
    genes which have been concatenated.
  id: longest
  inputBinding:
    prefix: --longest
  type: string
- doc: If this is True then for a given set of two genes A and B two sequences will
    be generated for A+B and B+A. Default is 'False'.
  id: reverse
  inputBinding:
    prefix: --reverse
  type: boolean
- doc: If used then the number of nucleotides of all sequences from the output FASTA
    file (i.e. --output_genes) will be reported.
  id: output_genes_count_nuc
  inputBinding:
    prefix: --output_genes_count_nuc
  type: string
- doc: If used then the number of sequences from the output FASTA file (i.e. --output_genes)
    will be reported.
  id: output_genes_count_seq
  inputBinding:
    prefix: --output_genes_count_seq
  type: string
- doc: If this is larger than 0 than 'N' characters will be added at the end of each
    sequence from the output (it might help for avoiding cross-scaffolding). Default
    is '0'.
  id: padding
  inputBinding:
    prefix: --padding
  type: string
