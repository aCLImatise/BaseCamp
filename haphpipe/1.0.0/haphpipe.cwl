#!/usr/bin/env cwl-runner

baseCommand:
- haphpipe
class: CommandLineTool
cwlVersion: v1.0
id: haphpipe
inputs:
- doc: sample_reads             subsample reads using seqtk trim_reads               trim
    reads using Trimmomatic join_reads               join reads using FLASh ec_reads                 error
    correct reads using SPAdes
  id: reads
  inputBinding:
    prefix: -- Reads
  type: boolean
- doc: 'assemble_denovo          assemble reads denovo assemble_amplicons       assemble
    contigs to amplicon regions assemble_scaffold        assemble contigs to genome
    align_reads              align reads to reference call_variants            call
    variants vcf_to_consensus         create consensus sequence from VCF refine_assembly          iterative
    refinement: align - variants - consensus finalize_assembly        finalize consensus
    sequence'
  id: assemble
  inputBinding:
    prefix: -- Assemble
  type: boolean
- doc: predict_haplo            assemble haplotypes with PredictHaplo ph_parser                parse
    output from PredictHaplo.
  id: haplotype
  inputBinding:
    prefix: -- Haplotype
  type: boolean
- doc: pairwise_align           align consensus to an annotated reference extract_pairwise         extract
    sequence regions from pairwise alignment summary_stats            generates summary
    statistics for samples
  id: description
  inputBinding:
    prefix: -- Description
  type: boolean
- doc: multiple_align           multiple sequence alignment model_test               tests
    for model of evolution using ModelTest build_tree               bilds phylogenetic
    tree with RAxML
  id: phylo
  inputBinding:
    prefix: -- Phylo
  type: boolean
- doc: demo                     setup demo directory and test data
  id: miscellaneous
  inputBinding:
    prefix: -- Miscellaneous
  type: boolean
