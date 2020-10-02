class: CommandLineTool
id: methratio.py.cwl
inputs:
- id: in_out
  doc: 'output methylation ratio file name. [default: STDOUT]'
  type: File
  inputBinding:
    prefix: --out
- id: in_alignment_copy
  doc: "save a copy of input alignment for BSMAP pipe input.\n(in BAM format) [default:\
    \ none]"
  type: File
  inputBinding:
    prefix: --alignment-copy
- id: in_wig
  doc: 'output methylation ratio wiggle file. [default: none]'
  type: File
  inputBinding:
    prefix: --wig
- id: in_wig_bin
  doc: 'wiggle file bin size. [default: 25]'
  type: long
  inputBinding:
    prefix: --wig-bin
- id: in_ref
  doc: reference genome fasta file. (required)
  type: File
  inputBinding:
    prefix: --ref
- id: in_chr
  doc: "process only specified chromosomes, separated by ','.\n[default: all] example:\
    \ --chroms=chr1,chr2"
  type: long
  inputBinding:
    prefix: --chr
- id: in_sam_path
  doc: 'path to samtools. [default: none]'
  type: File
  inputBinding:
    prefix: --sam-path
- id: in_unique
  doc: process only unique mappings/pairs.
  type: boolean
  inputBinding:
    prefix: --unique
- id: in_pair
  doc: process only properly paired mappings.
  type: boolean
  inputBinding:
    prefix: --pair
- id: in_zero_meth
  doc: "report loci with zero methylation ratios.\n(depreciated, -z will be always\
    \ enabled)"
  type: boolean
  inputBinding:
    prefix: --zero-meth
- id: in_quiet
  doc: don't print progress on stderr.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_remove_duplicate
  doc: remove duplicated reads.
  type: boolean
  inputBinding:
    prefix: --remove-duplicate
- id: in_trim_fill_in
  doc: 'trim N end-repairing fill-in nucleotides. [default: 0]'
  type: long
  inputBinding:
    prefix: --trim-fillin
- id: in_combine_cpg
  doc: combine CpG methylaion ratios on both strands.
  type: boolean
  inputBinding:
    prefix: --combine-CpG
- id: in_min_depth
  doc: 'report loci with sequencing depth>=FOLD. [default: 1]'
  type: long
  inputBinding:
    prefix: --min-depth
- id: in_no_header
  doc: don't print a header line
  type: boolean
  inputBinding:
    prefix: --no-header
- id: in_ct_snp
  doc: "how to handle CT SNP (\"no-action\", \"correct\", \"skip\"),\ndefault: \"\
    correct\"."
  type: string
  inputBinding:
    prefix: --ct-snp
- id: in_context
  doc: "methylation pattern type [CG|CHG|CHH], multiple types\nseparated by ','. [default:\
    \ all]\n"
  type: string
  inputBinding:
    prefix: --context
- id: in_bs_map_mapping_files
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: 'output methylation ratio file name. [default: STDOUT]'
  type: File
  outputBinding:
    glob: $(inputs.in_out)
- id: out_wig
  doc: 'output methylation ratio wiggle file. [default: none]'
  type: File
  outputBinding:
    glob: $(inputs.in_wig)
cwlVersion: v1.1
baseCommand:
- methratio.py
