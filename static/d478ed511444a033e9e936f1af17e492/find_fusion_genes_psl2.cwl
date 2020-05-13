class: CommandLineTool
id: find_fusion_genes_psl2.py.cwl
inputs:
- id: input_mappings
  doc: The input file in PSL format containing the reads/contigs uniquely mapped on
    fusion genes.
  type: string
  inputBinding:
    prefix: --input_mappings
- id: input_genes_positions
  doc: A database containing the genes positions on the genome, e.g. 'ensembl/genes_positions_ensembl.txt'.
  type: string
  inputBinding:
    prefix: --input_genes_positions
- id: input_gene_gene_fast_a
  doc: A FAST file containing the sequences of the gene-gene combinations used for
    finding fusion genes, e.g. 'gene-gene.fa'.
  type: string
  inputBinding:
    prefix: --input_genegene_fasta
- id: input_hugo
  doc: The input database used for linking ENSEMBL GENE ID to HUGO gene names, e.g.
    'genes_info_ensembl.txt'.
  type: string
  inputBinding:
    prefix: --input_hugo
- id: threshold_matches
  doc: The threshold for matches above which the contigs which align are taking into
    consideration. Default is '0.75'.
  type: string
  inputBinding:
    prefix: --threshold_matches
- id: mismatches
  doc: All alignments having strictly more mismatches will be removed. Default is
    '1000'.
  type: string
  inputBinding:
    prefix: --mismatches
- id: threshold_overlap
  doc: The threshold for the minimum length of the read overlap over the fusion point
    (i.e. overhang/anchor). Default is '30'.
  type: string
  inputBinding:
    prefix: --threshold_overlap
- id: separator
  doc: The separator string to be used for marking the breakpoint in the fusion junction.
  type: string
  inputBinding:
    prefix: --separator
- id: output
  doc: A text file containg a report regarding new candidate fusion genes.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- find_fusion_genes_psl2.py
