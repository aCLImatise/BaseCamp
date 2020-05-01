#!/usr/bin/env cwl-runner

baseCommand:
- configureStrelkaGermlineWorkflow.py
class: CommandLineTool
cwlVersion: v1.0
id: configurestrelkagermlineworkflow.py
inputs:
- doc: Sample BAM or CRAM file. May be specified more than once, multiple inputs will
    be treated as each BAM file representing a different sample. [required] (no default)
  id: bam
  inputBinding:
    prefix: --bam
  type: File
- doc: Provide ploidy file in VCF. The VCF should include one sample column per input
    sample labeled with the same sample names found in the input BAM/CRAM RG header
    sections. Ploidy should be provided in records using the FORMAT/CN field, which
    are interpreted to span the range [POS+1, INFO/END]. Any CN value besides 1 or
    0 will be treated as 2. File must be tabix indexed. (no default)
  id: ploidy
  inputBinding:
    prefix: --ploidy
  type: File
- doc: Provide BED file of regions where gVCF block compression is not allowed. File
    must be bgzip- compressed/tabix-indexed. (no default)
  id: no_compress
  inputBinding:
    prefix: --noCompress
  type: File
- doc: Call variants on CHROM without a ploidy prior assumption, issuing calls with
    continuous variant frequencies (no default)
  id: call_continuous_vf
  inputBinding:
    prefix: --callContinuousVf
  type: string
- doc: Set options for RNA-Seq input.
  id: rna
  inputBinding:
    prefix: --rna
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
    be written. Each analysis requires a separate directory. (default: StrelkaGermlineWorkflow)'
  id: run_dir
  inputBinding:
    prefix: --runDir
  type: string
