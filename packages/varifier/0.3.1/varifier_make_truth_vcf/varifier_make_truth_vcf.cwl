class: CommandLineTool
id: varifier_make_truth_vcf.cwl
inputs:
- id: in_max_recall_ref_len
  doc: "Do not include variants where REF length is more than\nthis number. Default\
    \ is no limit"
  type: long?
  inputBinding:
    prefix: --max_recall_ref_len
- id: in_flank_length
  doc: "Length of sequence to add either side of variant when\nmaking probe sequences\
    \ [100]"
  type: long?
  inputBinding:
    prefix: --flank_length
- id: in_truth_mask
  doc: "BED file of truth genome regions to mask. Any variants\nin the VCF matching\
    \ to the mask are flagged and will\nnot count towards precision or recall if the\
    \ output\nVCF is used with vcf_eval"
  type: File?
  inputBinding:
    prefix: --truth_mask
- id: in_split_ref
  doc: "When using MUMmer, split the ref genome into one file\nper sequence, and run\
    \ MUMmer on each split.\nExperimental - should improve run time for big genomes"
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
  doc: "Number of CPUs to use when running nucmer and minimap2\n[1]\n"
  type: long?
  inputBinding:
    prefix: --cpus
- id: in_truth_fast_a
  doc: FASTA file of truth genome
  type: string
  inputBinding:
    position: 0
- id: in_ref_fast_a
  doc: FASTA file of reference genome
  type: string
  inputBinding:
    position: 1
- id: in_outdir
  doc: Name of output directory
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_truth_mask
  doc: "BED file of truth genome regions to mask. Any variants\nin the VCF matching\
    \ to the mask are flagged and will\nnot count towards precision or recall if the\
    \ output\nVCF is used with vcf_eval"
  type: File?
  outputBinding:
    glob: $(inputs.in_truth_mask)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/varifier:0.3.1--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- varifier
- make_truth_vcf
