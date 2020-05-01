#!/usr/bin/env cwl-runner

baseCommand:
- find_homolog_genes.py
class: CommandLineTool
cwlVersion: v1.0
id: find_homolog_genes.py
inputs:
- doc: The input file in Bowtie MAP format (sorted by read name) containing the short
    reads mapped on the transcripts (can be also STDIN).
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The output text tab-separated file containing the candidate homologous genes
    (the genes are sorted alphabetically on the each line).
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: The minimum number of reads which map simultaneously on two genes in order
    to be considered as homolog genes. Default is 1.
  id: reads
  inputBinding:
    prefix: --reads
  type: string
- doc: The output text file containing the reads names (and its mate) which mapp simultaneously
    on transcripts from at least two genes.
  id: output_offending_pair_reads
  inputBinding:
    prefix: --output_offending_pair_reads
  type: string
- doc: Database with exons position on chromosomes, e.g. 'more_exons_ensembl.txt'.
    This is used for filtering the UTRs extensions by removing any extension which
    overlaps with any exons from the database. This is optional.
  id: input_exons
  inputBinding:
    prefix: --input_exons
  type: string
- doc: Input file which contain a pattern for genes which should be ignored/skipped
    from the analysis.
  id: filter
  inputBinding:
    prefix: --filter
  type: string
- doc: If it set then only the alignments of a read are taken into consideration which
    are at maximum zero mismatches away. This expects that the input has 4 columns
    instead of 3, and the fourth column contains the mismatches from Bowtie.
  id: d0
  inputBinding:
    prefix: --d0
  type: boolean
- doc: If it set then only the alignments of a read are taken into consideration which
    are at maximum one mismatch away. This works only for maximum two mismatches.
    This expects that the input has 4 columns instead of 3, and the fourth column
    contains the mismatches from Bowtie.
  id: d1
  inputBinding:
    prefix: --d1
  type: boolean
- doc: A file containing paths to candidate fusion genes and transcripts together
    with the ids/names of supporting reads.
  id: output_saved_from_pseudogenes
  inputBinding:
    prefix: --output_saved_from_pseudogenes
  type: string
- doc: The input database with gene ids of the pseudogenes.
  id: input_pseudogenes
  inputBinding:
    prefix: --input_pseudogenes
  type: string
- doc: Number of parallel processes/CPUs to be used for computations. In case of value
    0 then the program will use all the CPUs which are found. The default value is
    0.
  id: processes
  inputBinding:
    prefix: --processes
  type: string
