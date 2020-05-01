#!/usr/bin/env cwl-runner

baseCommand:
- run_somaticseq.py
class: CommandLineTool
cwlVersion: v1.0
id: run_somaticseq.py
inputs:
- doc: 'output directory (default: .)'
  id: output_directory
  inputBinding:
    prefix: --output-directory
  type: string
- doc: '.fasta.fai file to get the contigs (default: None)'
  id: genome_reference
  inputBinding:
    prefix: --genome-reference
  type: string
- doc: 'VCF of true hits (default: None)'
  id: truth_snv
  inputBinding:
    prefix: --truth-snv
  type: string
- doc: 'VCF of true hits (default: None)'
  id: truth_in_del
  inputBinding:
    prefix: --truth-indel
  type: string
- doc: 'RData for SNV (default: None)'
  id: classifier_snv
  inputBinding:
    prefix: --classifier-snv
  type: string
- doc: 'RData for INDEL (default: None)'
  id: classifier_in_del
  inputBinding:
    prefix: --classifier-indel
  type: string
- doc: 'SCORE for PASS (default: 0.5)'
  id: pass_threshold
  inputBinding:
    prefix: --pass-threshold
  type: string
- doc: 'SCORE for LowQual (default: 0.1)'
  id: low_qual_threshold
  inputBinding:
    prefix: --lowqual-threshold
  type: string
- doc: 'ada or xgboost (default: ada)'
  id: algorithm
  inputBinding:
    prefix: --algorithm
  type: string
- doc: 'VAF for homozygous (default: 0.85)'
  id: homozygous_threshold
  inputBinding:
    prefix: --homozygous-threshold
  type: string
- doc: 'VAF for heterozygous (default: 0.01)'
  id: heterozygous_threshold
  inputBinding:
    prefix: --heterozygous-threshold
  type: string
- doc: 'Minimum mapping quality below which is considered poor (default: 1)'
  id: minimum_mapping_quality
  inputBinding:
    prefix: --minimum-mapping-quality
  type: long
- doc: 'Minimum base quality below which is considered poor (default: 5)'
  id: minimum_base_quality
  inputBinding:
    prefix: --minimum-base-quality
  type: long
- doc: 'Minimum number of tools to be considered (default: 0.5)'
  id: minimum_num_callers
  inputBinding:
    prefix: --minimum-num-callers
  type: long
- doc: 'dbSNP VCF (default: None)'
  id: dbsnp_vcf
  inputBinding:
    prefix: --dbsnp-vcf
  type: string
- doc: 'COSMIC VCF (default: None)'
  id: cosmic_vcf
  inputBinding:
    prefix: --cosmic-vcf
  type: string
- doc: 'inclusion bed (default: None)'
  id: inclusion_region
  inputBinding:
    prefix: --inclusion-region
  type: string
- doc: 'exclusion bed (default: None)'
  id: exclusion_region
  inputBinding:
    prefix: --exclusion-region
  type: string
- doc: 'number of threads (default: 1)'
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: 'Keep intermediate files (default: False)'
  id: keep_intermediates
  inputBinding:
    prefix: --keep-intermediates
  type: boolean
- doc: 'Invoke training mode with ground truths (default: False)'
  id: somatic_seq_train
  inputBinding:
    prefix: --somaticseq-train
  type: boolean
