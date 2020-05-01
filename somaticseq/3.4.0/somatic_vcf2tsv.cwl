#!/usr/bin/env cwl-runner

baseCommand:
- somatic_vcf2tsv.py
class: CommandLineTool
cwlVersion: v1.0
id: somatic_vcf2tsv.py
inputs:
- doc: 'Input file is VCF formatted. (default: None)'
  id: vcf_format
  inputBinding:
    prefix: --vcf-format
  type: string
- doc: 'Input file is BED formatted. (default: None)'
  id: bed_format
  inputBinding:
    prefix: --bed-format
  type: string
- doc: 'A list of positions: tab seperating contig and positions. (default: None)'
  id: positions_list
  inputBinding:
    prefix: --positions-list
  type: string
- doc: 'Normal BAM File (default: None)'
  id: normal_bam_file
  inputBinding:
    prefix: --normal-bam-file
  type: string
- doc: 'Tumor BAM File (default: None)'
  id: tumor_bam_file
  inputBinding:
    prefix: --tumor-bam-file
  type: string
- doc: 'VCF of true hits (default: None)'
  id: ground_truth_vcf
  inputBinding:
    prefix: --ground-truth-vcf
  type: string
- doc: 'dbSNP VCF: do not use if input VCF is annotated (default: None)'
  id: dbsnp_vcf
  inputBinding:
    prefix: --dbsnp-vcf
  type: string
- doc: 'COSMIC VCF: do not use if input VCF is annotated (default: None)'
  id: cosmic_vcf
  inputBinding:
    prefix: --cosmic-vcf
  type: string
- doc: 'MuTect VCF (default: None)'
  id: mute_ct_vcf
  inputBinding:
    prefix: --mutect-vcf
  type: string
- doc: 'Strelka VCF (default: None)'
  id: str_elka_vcf
  inputBinding:
    prefix: --strelka-vcf
  type: string
- doc: 'SomaticSniper VCF (default: None)'
  id: somatic_sniper_vcf
  inputBinding:
    prefix: --somaticsniper-vcf
  type: string
- doc: 'VarScan2 VCF (default: None)'
  id: vars_can_vcf
  inputBinding:
    prefix: --varscan-vcf
  type: string
- doc: 'JointSNVMix2 VCF (default: None)'
  id: jsm_vcf
  inputBinding:
    prefix: --jsm-vcf
  type: string
- doc: 'VarDict VCF (default: None)'
  id: var_dict_vcf
  inputBinding:
    prefix: --vardict-vcf
  type: string
- doc: 'MuSE VCF (default: None)'
  id: muse_vcf
  inputBinding:
    prefix: --muse-vcf
  type: string
- doc: 'LoFreq VCF (default: None)'
  id: lo_freq_vcf
  inputBinding:
    prefix: --lofreq-vcf
  type: string
- doc: 'Scalpel VCF (default: None)'
  id: scalpel_vcf
  inputBinding:
    prefix: --scalpel-vcf
  type: string
- doc: 'TNscope VCF (default: None)'
  id: tn_scope_vcf
  inputBinding:
    prefix: --tnscope-vcf
  type: string
- doc: 'Platypus VCF (default: None)'
  id: platypus_vcf
  inputBinding:
    prefix: --platypus-vcf
  type: string
- doc: '.fasta.fai file to get the contigs (default: None)'
  id: genome_reference
  inputBinding:
    prefix: --genome-reference
  type: string
- doc: 'Do not consider duplicate reads from BAM files. Default is to count everything
    (default: False)'
  id: de_duplicate
  inputBinding:
    prefix: --deduplicate
  type: boolean
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
- doc: 'Minimum number of tools to be considered (default: 0)'
  id: minimum_num_callers
  inputBinding:
    prefix: --minimum-num-callers
  type: long
- doc: 'phred, fraction, or none (default: None)'
  id: p_scale
  inputBinding:
    prefix: --p-scale
  type: string
- doc: "Output TSV Name (default: <_io.TextIOWrapper name='<stdout>' mode='w' encoding='UTF-8'>)"
  id: output_tsv_file
  inputBinding:
    prefix: --output-tsv-file
  type: string
