#!/usr/bin/env cwl-runner

baseCommand:
- SSeq_tsv2vcf.py
class: CommandLineTool
cwlVersion: v1.0
id: sseq_tsv2vcf.py
inputs:
- doc: 'TSV in (default: None)'
  id: tsv_in
  inputBinding:
    prefix: --tsv-in
  type: string
- doc: 'VCF iut (default: None)'
  id: vcf_out
  inputBinding:
    prefix: --vcf-out
  type: string
- doc: 'Above which is automatically PASS (default: 0.5)'
  id: pass_threshold
  inputBinding:
    prefix: --pass-threshold
  type: string
- doc: 'Low quality subject to lenient filter (default: 0.1)'
  id: low_qual_threshold
  inputBinding:
    prefix: --lowqual-threshold
  type: string
- doc: 'The VAF to be labeled 1/1 in GT (default: 0.85)'
  id: hom_threshold
  inputBinding:
    prefix: --hom-threshold
  type: string
- doc: 'The VAF to be labeled 0/1 in GT (default: 0.01)'
  id: het_threshold
  inputBinding:
    prefix: --het-threshold
  type: string
- doc: 'Normal Sample Name (default: NORMAL)'
  id: normal_sample_name
  inputBinding:
    prefix: --normal-sample-name
  type: string
- doc: 'Tumor Sample Name (default: TUMOR)'
  id: tumor_sample_name
  inputBinding:
    prefix: --tumor-sample-name
  type: string
- doc: '[INDIVIDUAL_MUTATION_TOOLS [INDIVIDUAL_MUTATION_TOOLS ...]], --individual-mutation-tools
    [INDIVIDUAL_MUTATION_TOOLS [INDIVIDUAL_MUTATION_TOOLS ...]] A list of all tools
    used. Possible values are CGA/MuTect/MuTect2 (M), VarScan2 (V), JointSNVMix2 (J),
    SomaticSniper (S), VarDict (D), MuSE (U), LoFreq (L), Scalpel (P), Strelka (K),
    TNscope (T), and/or Platypus (Y) (default: None)'
  id: tools
  inputBinding:
    prefix: -tools
  type: boolean
- doc: 'Flag it to print out everything (default: False)'
  id: emit_all
  inputBinding:
    prefix: --emit-all
  type: boolean
- doc: 'Flag it to print out Phred scale QUAL (proper VCF format but more annoying
    to filter) (default: False)'
  id: phred_scale
  inputBinding:
    prefix: --phred-scale
  type: boolean
- doc: 'Tumor-only mode (default: False)'
  id: single_sample
  inputBinding:
    prefix: --single-sample
  type: boolean
- doc: 'Paired tumor-normal samples (default: True)'
  id: paired_samples
  inputBinding:
    prefix: --paired-samples
  type: boolean
