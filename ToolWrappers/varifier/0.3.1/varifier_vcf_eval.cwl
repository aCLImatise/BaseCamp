class: CommandLineTool
id: varifier_vcf_eval.cwl
inputs:
- id: in_flank_length
  doc: "Length of sequence to add either side of variant when\nmaking probe sequences\
    \ [100]"
  type: long?
  inputBinding:
    prefix: --flank_length
- id: in_force
  doc: Replace outdir if it already exists
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_filter_pass
  doc: "[,FILTER2[,...]]\nDefines how to handle FILTER column of input VCF file.\n\
    Comma-separated list of filter names. A VCF line is\nkept if any of its FILTER\
    \ entries are in the provided\nlist. Put '.' in the list to keep records where\
    \ the\nfilter column is '.'. Default behaviour is to ignore\nthe filter column\
    \ and use all records"
  type: long?
  inputBinding:
    prefix: --filter_pass
- id: in_ref_mask
  doc: "BED file of ref regions to mask. Any variants in the\nVCF overlapping the\
    \ mask are removed at the start of\nthe pipeline"
  type: File?
  inputBinding:
    prefix: --ref_mask
- id: in_truth_mask
  doc: "BED file of truth genome regions to mask. Any variants\nin the VCF matching\
    \ to the mask are flagged and do not\ncount towards precision or recall"
  type: File?
  inputBinding:
    prefix: --truth_mask
- id: in_truth_vcf
  doc: "VCF file of variant calls between vcf_fasta and\ntruth_fasta, where reference\
    \ of this VCF file is\ntruth_fasta. If provided, used to calculate recall"
  type: File?
  inputBinding:
    prefix: --truth_vcf
- id: in_max_recall_ref_len
  doc: "For recall, do not look for expected variants where\nREF length is more than\
    \ this number. Default is no\nlimit. This option will not work if you use\n--truth_vcf"
  type: long?
  inputBinding:
    prefix: --max_recall_ref_len
- id: in_use_ref_calls
  doc: "Include 0/0 genotype calls when calculating TPs and\nprecision. By default\
    \ they are ignored"
  type: boolean?
  inputBinding:
    prefix: --use_ref_calls
- id: in_split_ref
  doc: "When using MUMmer to get expected calls for recall,\nsplit the ref genome\
    \ into one file per sequence, and\nrun MUMmer on each split. Experimental - should\n\
    improve run time for big genomes"
  type: boolean?
  inputBinding:
    prefix: --split_ref
- id: in_no_max_match
  doc: "When using nucmer to get expected calls for recall, do\nnot use the --maxmatch\
    \ option. May reduce sensitivity\nto finding all variants"
  type: boolean?
  inputBinding:
    prefix: --no_maxmatch
- id: in_cpus
  doc: "Number of CPUs to use when running nucmer and minimap2\nto get recall, eveything\
    \ else is single-core/thread.\nIf you have a big genome, more efficient to run\n\
    make_truth_vcf with >1 CPU, then use its output with\n--truth_vcf when running\
    \ vcf_eval. [1]\n"
  type: long?
  inputBinding:
    prefix: --cpus
- id: in_truth_fast_a
  doc: FASTA file of truth genome
  type: string
  inputBinding:
    position: 0
- id: in_vcf_fast_a
  doc: FASTA file corresponding to vcf_file
  type: string
  inputBinding:
    position: 1
- id: in_vcf_in
  doc: VCF file to evaluate
  type: string
  inputBinding:
    position: 2
- id: in_outdir
  doc: Name of output directory
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/varifier:0.3.1--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- varifier
- vcf_eval
