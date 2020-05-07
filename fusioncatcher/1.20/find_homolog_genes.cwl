class: CommandLineTool
id: find_homolog_genes.py.cwl
inputs:
- id: input
  doc: The input file in Bowtie MAP format (sorted by read name) containing the short
    reads mapped on the transcripts (can be also STDIN).
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The output text tab-separated file containing the candidate homologous genes
    (the genes are sorted alphabetically on the each line).
  type: string
  inputBinding:
    prefix: --output
- id: reads
  doc: The minimum number of reads which map simultaneously on two genes in order
    to be considered as homolog genes. Default is 1.
  type: string
  inputBinding:
    prefix: --reads
- id: output_offending_pair_reads
  doc: The output text file containing the reads names (and its mate) which mapp simultaneously
    on transcripts from at least two genes.
  type: string
  inputBinding:
    prefix: --output_offending_pair_reads
- id: input_exons
  doc: Database with exons position on chromosomes, e.g. 'more_exons_ensembl.txt'.
    This is used for filtering the UTRs extensions by removing any extension which
    overlaps with any exons from the database. This is optional.
  type: string
  inputBinding:
    prefix: --input_exons
- id: filter
  doc: Input file which contain a pattern for genes which should be ignored/skipped
    from the analysis.
  type: string
  inputBinding:
    prefix: --filter
- id: d0
  doc: If it set then only the alignments of a read are taken into consideration which
    are at maximum zero mismatches away. This expects that the input has 4 columns
    instead of 3, and the fourth column contains the mismatches from Bowtie.
  type: boolean
  inputBinding:
    prefix: --d0
- id: d1
  doc: If it set then only the alignments of a read are taken into consideration which
    are at maximum one mismatch away. This works only for maximum two mismatches.
    This expects that the input has 4 columns instead of 3, and the fourth column
    contains the mismatches from Bowtie.
  type: boolean
  inputBinding:
    prefix: --d1
- id: output_saved_from_pseudogenes
  doc: A file containing paths to candidate fusion genes and transcripts together
    with the ids/names of supporting reads.
  type: string
  inputBinding:
    prefix: --output_saved_from_pseudogenes
- id: input_pseudogenes
  doc: The input database with gene ids of the pseudogenes.
  type: string
  inputBinding:
    prefix: --input_pseudogenes
- id: processes
  doc: Number of parallel processes/CPUs to be used for computations. In case of value
    0 then the program will use all the CPUs which are found. The default value is
    0.
  type: string
  inputBinding:
    prefix: --processes
outputs: []
cwlVersion: v1.1
baseCommand:
- find_homolog_genes.py
