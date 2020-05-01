#!/usr/bin/env cwl-runner

baseCommand:
- attach_pileupVAF.py
class: CommandLineTool
cwlVersion: v1.0
id: attach_pileupvaf.py
inputs:
- doc: 'My VCF (default: None)'
  id: my_vcf_file
  inputBinding:
    prefix: --my-vcf-file
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
- doc: 'Normal VCF File (default: None)'
  id: normal_pile_up_file
  inputBinding:
    prefix: --normal-pileup-file
  type: string
- doc: 'Tumor VCF File (default: None)'
  id: tumor_pile_up_file
  inputBinding:
    prefix: --tumor-pileup-file
  type: string
- doc: 'Use the fasta.fai file to get the valid contigs (default: None)'
  id: reference_fast_a_fai
  inputBinding:
    prefix: --reference-fasta-fai
  type: string
- doc: 'Use the reference dict file to get the valid contigs (default: None)'
  id: reference_fast_a_dict
  inputBinding:
    prefix: --reference-fasta-dict
  type: string
- doc: 'Variant Allele Frequency calculated from pileup file (default: False)'
  id: pile_up_variant_allele_frequency
  inputBinding:
    prefix: --pileup-variant-allele-frequency
  type: boolean
- doc: 'DP4 from pileup file (default: False)'
  id: pile_up_dp4
  inputBinding:
    prefix: --pileup-DP4
  type: boolean
- doc: 'Output File Name (default: None)'
  id: output_file
  inputBinding:
    prefix: --output-file
  type: string
