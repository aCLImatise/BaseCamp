class: CommandLineTool
id: generate_gene_gene_junctions.py.cwl
inputs:
- id: input
  doc: The text separated file containing on each line two names of genes.
  type: string
  inputBinding:
    prefix: --input
- id: input_database
  doc: The FASTA file containg the sequences of all genes.
  type: string
  inputBinding:
    prefix: --input_database
- id: input_exons
  doc: Database with exons position on chromosomes, e.g. 'more_exons_ensembl.txt'.
    This is used for filtering the UTRs extensions by removing any extension which
    overlaps with any exons from the database. This is optional.
  type: string
  inputBinding:
    prefix: --input_exons
- id: output
  doc: A FASTA file containing the sequences of the two genes per line concatenated.
  type: string
  inputBinding:
    prefix: --output
- id: output_genes
  doc: A FASTA file containing the sequences of all genes from the input (a gene will
    appear only once in the output).
  type: string
  inputBinding:
    prefix: --output_genes
- id: output_dir
  doc: An output directory containing FASTA files containing the sequences of the
    two genes per line concatenated. One Fasta file contains one sequence.
  type: string
  inputBinding:
    prefix: --output_dir
- id: output_top_hat_jun_cs
  doc: A junctions file which can be used further as input to TopHat.
  type: string
  inputBinding:
    prefix: --output_tophat_juncs
- id: longest
  doc: A text file where it will be written the size of the longest sequence of two
    genes which have been concatenated.
  type: string
  inputBinding:
    prefix: --longest
- id: reverse
  doc: If this is True then for a given set of two genes A and B two sequences will
    be generated for A+B and B+A. Default is 'False'.
  type: boolean
  inputBinding:
    prefix: --reverse
- id: output_genes_count_nuc
  doc: If used then the number of nucleotides of all sequences from the output FASTA
    file (i.e. --output_genes) will be reported.
  type: string
  inputBinding:
    prefix: --output_genes_count_nuc
- id: output_genes_count_seq
  doc: If used then the number of sequences from the output FASTA file (i.e. --output_genes)
    will be reported.
  type: string
  inputBinding:
    prefix: --output_genes_count_seq
- id: padding
  doc: If this is larger than 0 than 'N' characters will be added at the end of each
    sequence from the output (it might help for avoiding cross-scaffolding). Default
    is '0'.
  type: string
  inputBinding:
    prefix: --padding
outputs: []
cwlVersion: v1.1
baseCommand:
- generate_gene-gene_junctions.py
