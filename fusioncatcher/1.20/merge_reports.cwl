#!/usr/bin/env cwl-runner

baseCommand:
- merge_reports.py
class: CommandLineTool
cwlVersion: v1.0
id: merge_reports.py
inputs:
- doc: The report with candidate fusion genes found using the Bowtie.
  id: input_bowtie
  inputBinding:
    prefix: --input_bowtie
  type: string
- doc: The report with candidate fusion genes found using the BLAT aligner.
  id: input_blat
  inputBinding:
    prefix: --input_blat
  type: string
- doc: The report with candidate fusion genes found using the STAR aligner.
  id: input_star
  inputBinding:
    prefix: --input_star
  type: string
- doc: The report with candidate fusion genes found using the BOWTIE2 aligner.
  id: input_bowtie2
  inputBinding:
    prefix: --input_bowtie2
  type: string
- doc: The report with candidate fusion genes found using the BWA aligner.
  id: input_bwa
  inputBinding:
    prefix: --input_bwa
  type: string
- doc: The report with candidate fusion genes found using the SPOTLIGHT method.
  id: input_spotlight
  inputBinding:
    prefix: --input_spotlight
  type: string
- doc: The input list of candidate fusion genes, for example 'candidate_fusion-genes_no-offending-reads_label-no-
    proteins-paralogs-readthrough-similar- pseudogenes_further.txt'.
  id: input_candidate_fusion_genes
  inputBinding:
    prefix: --input_candidate_fusion_genes
  type: string
- doc: File containing the pairs of genes and their corresponding number of reads
    which map ambiguously on each other.
  id: input_ambiguous
  inputBinding:
    prefix: --input_ambiguous
  type: string
- doc: The minimum number of supporting reads (found using BLAT aligner) necessary
    for considering valid a candidate fusion gene. Default is '2'.
  id: supporting_reads_blat
  inputBinding:
    prefix: --supporting_reads_blat
  type: string
- doc: The minimum number of supporting pairs (found using BLAT aligner) necessary
    for considering valid a candidate fusion gene. Default is '2'.
  id: supporting_pairs_blat
  inputBinding:
    prefix: --supporting_pairs_blat
  type: string
- doc: The minimum number of supporting reads (found using STAR aligner) necessary
    for considering valid a candidate fusion gene. Default is '2'.
  id: supporting_reads_star
  inputBinding:
    prefix: --supporting_reads_star
  type: string
- doc: The minimum number of supporting pairs (found using STAR aligner) necessary
    for considering valid a candidate fusion gene. Default is '2'.
  id: supporting_pairs_star
  inputBinding:
    prefix: --supporting_pairs_star
  type: string
- doc: The minimum number of supporting reads (found using BOWTIE2 aligner) necessary
    for considering valid a candidate fusion gene. Default is '2'.
  id: supporting_reads_bowtie2
  inputBinding:
    prefix: --supporting_reads_bowtie2
  type: string
- doc: The minimum number of supporting pairs (found using BOWTIE2 aligner) necessary
    for considering valid a candidate fusion gene. Default is '2'.
  id: supporting_pairs_bowtie2
  inputBinding:
    prefix: --supporting_pairs_bowtie2
  type: string
- doc: The minimum number of supporting reads (found using BOWTIE2 aligner) necessary
    for considering valid a candidate fusion gene. Default is '2'.
  id: supporting_reads_bwa
  inputBinding:
    prefix: --supporting_reads_bwa
  type: string
- doc: The minimum number of supporting pairs (found using BWA aligner) necessary
    for considering valid a candidate fusion gene. Default is '2'.
  id: supporting_pairs_bwa
  inputBinding:
    prefix: --supporting_pairs_bwa
  type: string
- doc: The minimum number of supporting reads (found using SPOTLIGHT method) necessary
    for considering valid a candidate fusion gene. Default is '2'.
  id: supporting_reads_spotlight
  inputBinding:
    prefix: --supporting_reads_spotlight
  type: string
- doc: The minimum number of supporting pairs (found using SPOTLIGHT method) necessary
    for considering valid a candidate fusion gene. Default is '2'.
  id: supporting_pairs_spotlight
  inputBinding:
    prefix: --supporting_pairs_spotlight
  type: string
- doc: If set then the report is squished (i.e. fusion genes with same junction coordinates
    are listed once even that they are found by severeal methods). Default is 'False'.
  id: squish_report
  inputBinding:
    prefix: --squish-report
  type: boolean
- doc: For anchors longer (or equal) with this value it is enough to have only one
    supporting read. Default is '40'.
  id: anchor_2
  inputBinding:
    prefix: --anchor2
  type: string
- doc: Merged report of candidate fusion genes.
  id: output
  inputBinding:
    prefix: --output
  type: string
