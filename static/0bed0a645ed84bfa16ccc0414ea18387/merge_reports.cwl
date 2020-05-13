class: CommandLineTool
id: merge_reports.py.cwl
inputs:
- id: input_bowtie
  doc: The report with candidate fusion genes found using the Bowtie.
  type: string
  inputBinding:
    prefix: --input_bowtie
- id: input_blat
  doc: The report with candidate fusion genes found using the BLAT aligner.
  type: string
  inputBinding:
    prefix: --input_blat
- id: input_star
  doc: The report with candidate fusion genes found using the STAR aligner.
  type: string
  inputBinding:
    prefix: --input_star
- id: input_bowtie2
  doc: The report with candidate fusion genes found using the BOWTIE2 aligner.
  type: string
  inputBinding:
    prefix: --input_bowtie2
- id: input_bwa
  doc: The report with candidate fusion genes found using the BWA aligner.
  type: string
  inputBinding:
    prefix: --input_bwa
- id: input_spotlight
  doc: The report with candidate fusion genes found using the SPOTLIGHT method.
  type: string
  inputBinding:
    prefix: --input_spotlight
- id: input_candidate_fusion_genes
  doc: The input list of candidate fusion genes, for example 'candidate_fusion-genes_no-offending-reads_label-no-
    proteins-paralogs-readthrough-similar- pseudogenes_further.txt'.
  type: string
  inputBinding:
    prefix: --input_candidate_fusion_genes
- id: input_ambiguous
  doc: File containing the pairs of genes and their corresponding number of reads
    which map ambiguously on each other.
  type: string
  inputBinding:
    prefix: --input_ambiguous
- id: supporting_reads_blat
  doc: The minimum number of supporting reads (found using BLAT aligner) necessary
    for considering valid a candidate fusion gene. Default is '2'.
  type: string
  inputBinding:
    prefix: --supporting_reads_blat
- id: supporting_pairs_blat
  doc: The minimum number of supporting pairs (found using BLAT aligner) necessary
    for considering valid a candidate fusion gene. Default is '2'.
  type: string
  inputBinding:
    prefix: --supporting_pairs_blat
- id: supporting_reads_star
  doc: The minimum number of supporting reads (found using STAR aligner) necessary
    for considering valid a candidate fusion gene. Default is '2'.
  type: string
  inputBinding:
    prefix: --supporting_reads_star
- id: supporting_pairs_star
  doc: The minimum number of supporting pairs (found using STAR aligner) necessary
    for considering valid a candidate fusion gene. Default is '2'.
  type: string
  inputBinding:
    prefix: --supporting_pairs_star
- id: supporting_reads_bowtie2
  doc: The minimum number of supporting reads (found using BOWTIE2 aligner) necessary
    for considering valid a candidate fusion gene. Default is '2'.
  type: string
  inputBinding:
    prefix: --supporting_reads_bowtie2
- id: supporting_pairs_bowtie2
  doc: The minimum number of supporting pairs (found using BOWTIE2 aligner) necessary
    for considering valid a candidate fusion gene. Default is '2'.
  type: string
  inputBinding:
    prefix: --supporting_pairs_bowtie2
- id: supporting_reads_bwa
  doc: The minimum number of supporting reads (found using BOWTIE2 aligner) necessary
    for considering valid a candidate fusion gene. Default is '2'.
  type: string
  inputBinding:
    prefix: --supporting_reads_bwa
- id: supporting_pairs_bwa
  doc: The minimum number of supporting pairs (found using BWA aligner) necessary
    for considering valid a candidate fusion gene. Default is '2'.
  type: string
  inputBinding:
    prefix: --supporting_pairs_bwa
- id: supporting_reads_spotlight
  doc: The minimum number of supporting reads (found using SPOTLIGHT method) necessary
    for considering valid a candidate fusion gene. Default is '2'.
  type: string
  inputBinding:
    prefix: --supporting_reads_spotlight
- id: supporting_pairs_spotlight
  doc: The minimum number of supporting pairs (found using SPOTLIGHT method) necessary
    for considering valid a candidate fusion gene. Default is '2'.
  type: string
  inputBinding:
    prefix: --supporting_pairs_spotlight
- id: squish_report
  doc: If set then the report is squished (i.e. fusion genes with same junction coordinates
    are listed once even that they are found by severeal methods). Default is 'False'.
  type: boolean
  inputBinding:
    prefix: --squish-report
- id: anchor_2
  doc: For anchors longer (or equal) with this value it is enough to have only one
    supporting read. Default is '40'.
  type: string
  inputBinding:
    prefix: --anchor2
- id: output
  doc: Merged report of candidate fusion genes.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- merge_reports.py
