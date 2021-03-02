class: CommandLineTool
id: configureStrelkaGermlineWorkflow.py.cwl
inputs:
- id: in_config
  doc: "provide a configuration file to override defaults in\nglobal config file (/usr/local/share/strelka-2.9.10-0/\n\
    bin/configureStrelkaGermlineWorkflow.py.ini)"
  type: File?
  inputBinding:
    prefix: --config
- id: in_all_help
  doc: show all extended/hidden options
  type: boolean?
  inputBinding:
    prefix: --allHelp
- id: in_bam
  doc: "Sample BAM or CRAM file. May be specified more than\nonce, multiple inputs\
    \ will be treated as each BAM file\nrepresenting a different sample. [required]\
    \ (no\ndefault)"
  type: File?
  inputBinding:
    prefix: --bam
- id: in_ploidy
  doc: "Provide ploidy file in VCF. The VCF should include one\nsample column per\
    \ input sample labeled with the same\nsample names found in the input BAM/CRAM\
    \ RG header\nsections. Ploidy should be provided in records using\nthe FORMAT/CN\
    \ field, which are interpreted to span the\nrange [POS+1, INFO/END]. Any CN value\
    \ besides 1 or 0\nwill be treated as 2. File must be tabix indexed. (no\ndefault)"
  type: File?
  inputBinding:
    prefix: --ploidy
- id: in_no_compress
  doc: "Provide BED file of regions where gVCF block\ncompression is not allowed.\
    \ File must be bgzip-\ncompressed/tabix-indexed. (no default)"
  type: File?
  inputBinding:
    prefix: --noCompress
- id: in_call_continuous_vf
  doc: "Call variants on CHROM without a ploidy prior\nassumption, issuing calls with\
    \ continuous variant\nfrequencies (no default)"
  type: string?
  inputBinding:
    prefix: --callContinuousVf
- id: in_rna
  doc: Set options for RNA-Seq input.
  type: boolean?
  inputBinding:
    prefix: --rna
- id: in_reference_fast_a
  doc: samtools-indexed reference fasta file [required]
  type: File?
  inputBinding:
    prefix: --referenceFasta
- id: in_in_del_candidates
  doc: "Specify a VCF of candidate indel alleles. These\nalleles are always evaluated\
    \ but only reported in the\noutput when they are inferred to exist in the sample.\n\
    The VCF must be tabix indexed. All indel alleles must\nbe left-shifted/normalized,\
    \ any unnormalized alleles\nwill be ignored. This option may be specified more\n\
    than once, multiple input VCFs will be merged.\n(default: None)"
  type: File?
  inputBinding:
    prefix: --indelCandidates
- id: in_forced_gt
  doc: "Specify a VCF of candidate alleles. These alleles are\nalways evaluated and\
    \ reported even if they are\nunlikely to exist in the sample. The VCF must be\
    \ tabix\nindexed. All indel alleles must be left-\nshifted/normalized, any unnormalized\
    \ allele will\ntrigger a runtime error. This option may be specified\nmore than\
    \ once, multiple input VCFs will be merged.\nNote that for any SNVs provided in\
    \ the VCF, the SNV\nsite will be reported (and for gVCF, excluded from\nblock\
    \ compression), but the specific SNV alleles are\nignored. (default: None)"
  type: File?
  inputBinding:
    prefix: --forcedGT
- id: in_targeted
  doc: "Set options for exome or other targeted input: note in\nparticular that this\
    \ flag turns off high-depth filters"
  type: boolean?
  inputBinding:
    prefix: --targeted
- id: in_call_regions
  doc: "Optionally provide a bgzip-compressed/tabix-indexed\nBED file containing the\
    \ set of regions to call. No VCF\noutput will be provided outside of these regions.\
    \ The\nfull genome will still be used to estimate statistics\nfrom the input (such\
    \ as expected depth per\nchromosome). Only one BED file may be specified.\n(default:\
    \ call the entire genome)"
  type: File?
  inputBinding:
    prefix: --callRegions
- id: in_run_dir
  doc: "Name of directory to be created where all workflow\nscripts and output will\
    \ be written. Each analysis\nrequires a separate directory. (default:\nStrelkaGermlineWorkflow)"
  type: Directory?
  inputBinding:
    prefix: --runDir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_run_dir
  doc: "Name of directory to be created where all workflow\nscripts and output will\
    \ be written. Each analysis\nrequires a separate directory. (default:\nStrelkaGermlineWorkflow)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_run_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- configureStrelkaGermlineWorkflow.py
