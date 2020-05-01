#!/usr/bin/env cwl-runner

baseCommand:
- configureStrelkaSomaticWorkflow.py
class: CommandLineTool
cwlVersion: v1.0
id: configurestrelkasomaticworkflow.py
inputs:
- doc: Normal sample BAM or CRAM file. (no default)
  id: normal_bam
  inputBinding:
    prefix: --normalBam
  type: File
- doc: Tumor sample BAM or CRAM file. [required] (no default)
  id: tumour_bam
  inputBinding:
    prefix: --tumourBam
  type: File
- doc: Output a bed file describing somatic callable regions of the genome
  id: output_callable_regions
  inputBinding:
    prefix: --outputCallableRegions
  type: boolean
- doc: samtools-indexed reference fasta file [required]
  id: reference_fast_a
  inputBinding:
    prefix: --referenceFasta
  type: File
- doc: 'Specify a VCF of candidate indel alleles. These alleles are always evaluated
    but only reported in the output when they are inferred to exist in the sample.
    The VCF must be tabix indexed. All indel alleles must be left-shifted/normalized,
    any unnormalized alleles will be ignored. This option may be specified more than
    once, multiple input VCFs will be merged. (default: None)'
  id: in_del_candidates
  inputBinding:
    prefix: --indelCandidates
  type: File
- doc: 'Specify a VCF of candidate alleles. These alleles are always evaluated and
    reported even if they are unlikely to exist in the sample. The VCF must be tabix
    indexed. All indel alleles must be left- shifted/normalized, any unnormalized
    allele will trigger a runtime error. This option may be specified more than once,
    multiple input VCFs will be merged. Note that for any SNVs provided in the VCF,
    the SNV site will be reported (and for gVCF, excluded from block compression),
    but the specific SNV alleles are ignored. (default: None)'
  id: forced_gt
  inputBinding:
    prefix: --forcedGT
  type: File
- doc: 'Set options for exome or other targeted input: note in particular that this
    flag turns off high-depth filters'
  id: targeted
  inputBinding:
    prefix: --targeted
  type: boolean
- doc: 'Optionally provide a bgzip-compressed/tabix-indexed BED file containing the
    set of regions to call. No VCF output will be provided outside of these regions.
    The full genome will still be used to estimate statistics from the input (such
    as expected depth per chromosome). Only one BED file may be specified. (default:
    call the entire genome)'
  id: call_regions
  inputBinding:
    prefix: --callRegions
  type: File
- doc: 'Name of directory to be created where all workflow scripts and output will
    be written. Each analysis requires a separate directory. (default: StrelkaSomaticWorkflow)'
  id: run_dir
  inputBinding:
    prefix: --runDir
  type: string
