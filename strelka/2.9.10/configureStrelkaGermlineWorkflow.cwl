class: CommandLineTool
id: configureStrelkaGermlineWorkflow.py.cwl
inputs:
- id: bam
  doc: Sample BAM or CRAM file. May be specified more than once, multiple inputs will
    be treated as each BAM file representing a different sample. [required] (no default)
  type: File
  inputBinding:
    prefix: --bam
- id: ploidy
  doc: Provide ploidy file in VCF. The VCF should include one sample column per input
    sample labeled with the same sample names found in the input BAM/CRAM RG header
    sections. Ploidy should be provided in records using the FORMAT/CN field, which
    are interpreted to span the range [POS+1, INFO/END]. Any CN value besides 1 or
    0 will be treated as 2. File must be tabix indexed. (no default)
  type: File
  inputBinding:
    prefix: --ploidy
- id: no_compress
  doc: Provide BED file of regions where gVCF block compression is not allowed. File
    must be bgzip- compressed/tabix-indexed. (no default)
  type: File
  inputBinding:
    prefix: --noCompress
- id: call_continuous_vf
  doc: Call variants on CHROM without a ploidy prior assumption, issuing calls with
    continuous variant frequencies (no default)
  type: string
  inputBinding:
    prefix: --callContinuousVf
- id: rna
  doc: Set options for RNA-Seq input.
  type: boolean
  inputBinding:
    prefix: --rna
- id: reference_fast_a
  doc: samtools-indexed reference fasta file [required]
  type: File
  inputBinding:
    prefix: --referenceFasta
- id: in_del_candidates
  doc: 'Specify a VCF of candidate indel alleles. These alleles are always evaluated
    but only reported in the output when they are inferred to exist in the sample.
    The VCF must be tabix indexed. All indel alleles must be left-shifted/normalized,
    any unnormalized alleles will be ignored. This option may be specified more than
    once, multiple input VCFs will be merged. (default: None)'
  type: File
  inputBinding:
    prefix: --indelCandidates
- id: forced_gt
  doc: 'Specify a VCF of candidate alleles. These alleles are always evaluated and
    reported even if they are unlikely to exist in the sample. The VCF must be tabix
    indexed. All indel alleles must be left- shifted/normalized, any unnormalized
    allele will trigger a runtime error. This option may be specified more than once,
    multiple input VCFs will be merged. Note that for any SNVs provided in the VCF,
    the SNV site will be reported (and for gVCF, excluded from block compression),
    but the specific SNV alleles are ignored. (default: None)'
  type: File
  inputBinding:
    prefix: --forcedGT
- id: targeted
  doc: 'Set options for exome or other targeted input: note in particular that this
    flag turns off high-depth filters'
  type: boolean
  inputBinding:
    prefix: --targeted
- id: call_regions
  doc: 'Optionally provide a bgzip-compressed/tabix-indexed BED file containing the
    set of regions to call. No VCF output will be provided outside of these regions.
    The full genome will still be used to estimate statistics from the input (such
    as expected depth per chromosome). Only one BED file may be specified. (default:
    call the entire genome)'
  type: File
  inputBinding:
    prefix: --callRegions
- id: run_dir
  doc: 'Name of directory to be created where all workflow scripts and output will
    be written. Each analysis requires a separate directory. (default: StrelkaGermlineWorkflow)'
  type: string
  inputBinding:
    prefix: --runDir
outputs: []
cwlVersion: v1.1
baseCommand:
- configureStrelkaGermlineWorkflow.py
