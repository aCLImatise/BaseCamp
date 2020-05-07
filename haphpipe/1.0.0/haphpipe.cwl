class: CommandLineTool
id: haphpipe.cwl
inputs:
- id: reads
  doc: sample_reads             subsample reads using seqtk trim_reads               trim
    reads using Trimmomatic join_reads               join reads using FLASh ec_reads                 error
    correct reads using SPAdes
  type: boolean
  inputBinding:
    prefix: -- Reads
- id: assemble
  doc: 'assemble_denovo          assemble reads denovo assemble_amplicons       assemble
    contigs to amplicon regions assemble_scaffold        assemble contigs to genome
    align_reads              align reads to reference call_variants            call
    variants vcf_to_consensus         create consensus sequence from VCF refine_assembly          iterative
    refinement: align - variants - consensus finalize_assembly        finalize consensus
    sequence'
  type: boolean
  inputBinding:
    prefix: -- Assemble
- id: haplotype
  doc: predict_haplo            assemble haplotypes with PredictHaplo ph_parser                parse
    output from PredictHaplo.
  type: boolean
  inputBinding:
    prefix: -- Haplotype
- id: description
  doc: pairwise_align           align consensus to an annotated reference extract_pairwise         extract
    sequence regions from pairwise alignment summary_stats            generates summary
    statistics for samples
  type: boolean
  inputBinding:
    prefix: -- Description
- id: phylo
  doc: multiple_align           multiple sequence alignment model_test               tests
    for model of evolution using ModelTest build_tree               bilds phylogenetic
    tree with RAxML
  type: boolean
  inputBinding:
    prefix: -- Phylo
- id: miscellaneous
  doc: demo                     setup demo directory and test data
  type: boolean
  inputBinding:
    prefix: -- Miscellaneous
outputs: []
cwlVersion: v1.1
baseCommand:
- haphpipe
