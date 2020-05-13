class: CommandLineTool
id: configureStrelkaSomaticWorkflow.py.cwl
inputs:
- id: normal_bam
  doc: Normal sample BAM or CRAM file. (no default)
  type: File
  inputBinding:
    prefix: --normalBam
- id: tumour_bam
  doc: Tumor sample BAM or CRAM file. [required] (no default)
  type: File
  inputBinding:
    prefix: --tumourBam
- id: output_callable_regions
  doc: Output a bed file describing somatic callable regions of the genome
  type: boolean
  inputBinding:
    prefix: --outputCallableRegions
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
    be written. Each analysis requires a separate directory. (default: StrelkaSomaticWorkflow)'
  type: string
  inputBinding:
    prefix: --runDir
outputs: []
cwlVersion: v1.1
baseCommand:
- configureStrelkaSomaticWorkflow.py
