class: CommandLineTool
id: find_fusion_genes_map.py.cwl
inputs:
- id: input
  doc: The input file in Bowtie MAP format (sorted by read name, i.e. column number
    1) containing the short reads mapped on the transcripts. This should contain paired-
    end data.
  type: string
  inputBinding:
    prefix: --input
- id: filter_gene_pairs
  doc: The input text file tab separated format containg gene pairs which should be
    removed from the output fusion- genes list.
  type: string
  inputBinding:
    prefix: --filter_gene_pairs
- id: filter_genes
  doc: The input text file containing genes (one gene on each line) which should be
    removed from the output fusion- genes list.
  type: string
  inputBinding:
    prefix: --filter_genes
- id: input_hugo
  doc: The input database used for linking ENSEMBL GENE ID to HUGO gene names.
  type: string
  inputBinding:
    prefix: --input_hugo
- id: output_fusion_genes
  doc: The output text tab-separated file containing the candidate fusion genes (the
    genes are sorted alphabetically on the each line).
  type: string
  inputBinding:
    prefix: --output_fusion_genes
- id: output_fusion_transcripts
  doc: The output text tab-separated file containing the candidate fusion transcripts
    (the genes are sorted alphabetically on the each line).
  type: string
  inputBinding:
    prefix: --output_fusion_transcripts
- id: output_fusion_reads
  doc: The output text tab-separated file containing the candidate fusion genes and
    transcripts together with the ids/names of supporting reads.
  type: string
  inputBinding:
    prefix: --output_fusion_reads
- id: output_fusion_reads_split
  doc: A file containing paths to candidate fusion genes and transcripts together
    with the ids/names of supporting reads.
  type: string
  inputBinding:
    prefix: --output_fusion_reads_split
- id: output_fusion_reads_simple
  doc: The output text file containing one each line reads ids of the supporting reads.
  type: string
  inputBinding:
    prefix: --output_fusion_reads_simple
- id: output_missing_mate_reads
  doc: The output text tab-separated file containing the reads which have their mate
    read not mapped together to the gene name on which they map.
  type: string
  inputBinding:
    prefix: --output_missing_mate_reads
outputs: []
cwlVersion: v1.1
baseCommand:
- find_fusion_genes_map.py
