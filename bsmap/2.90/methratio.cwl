class: CommandLineTool
id: methratio.py.cwl
inputs:
- id: bs_map_mapping_files
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out
  doc: 'output methylation ratio file name. [default: STDOUT]'
  type: File
  inputBinding:
    prefix: --out
- id: alignment_copy
  doc: 'save a copy of input alignment for BSMAP pipe input. (in BAM format) [default:
    none]'
  type: File
  inputBinding:
    prefix: --alignment-copy
- id: wig
  doc: 'output methylation ratio wiggle file. [default: none]'
  type: File
  inputBinding:
    prefix: --wig
- id: wig_bin
  doc: 'wiggle file bin size. [default: 25]'
  type: string
  inputBinding:
    prefix: --wig-bin
- id: ref
  doc: reference genome fasta file. (required)
  type: File
  inputBinding:
    prefix: --ref
- id: chr
  doc: "process only specified chromosomes, separated by ','. [default: all] example:\
    \ --chroms=chr1,chr2"
  type: string
  inputBinding:
    prefix: --chr
- id: sam_path
  doc: 'path to samtools. [default: none]'
  type: File
  inputBinding:
    prefix: --sam-path
- id: unique
  doc: process only unique mappings/pairs.
  type: boolean
  inputBinding:
    prefix: --unique
- id: pair
  doc: process only properly paired mappings.
  type: boolean
  inputBinding:
    prefix: --pair
- id: zero_meth
  doc: report loci with zero methylation ratios. (depreciated, -z will be always enabled)
  type: boolean
  inputBinding:
    prefix: --zero-meth
- id: quiet
  doc: don't print progress on stderr.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: remove_duplicate
  doc: remove duplicated reads.
  type: boolean
  inputBinding:
    prefix: --remove-duplicate
- id: trim_fill_in
  doc: 'trim N end-repairing fill-in nucleotides. [default: 0]'
  type: string
  inputBinding:
    prefix: --trim-fillin
- id: combine_cpg
  doc: combine CpG methylaion ratios on both strands.
  type: boolean
  inputBinding:
    prefix: --combine-CpG
- id: min_depth
  doc: 'report loci with sequencing depth>=FOLD. [default: 1]'
  type: string
  inputBinding:
    prefix: --min-depth
- id: no_header
  doc: don't print a header line
  type: boolean
  inputBinding:
    prefix: --no-header
- id: ct_snp
  doc: 'how to handle CT SNP ("no-action", "correct", "skip"), default: "correct".'
  type: string
  inputBinding:
    prefix: --ct-snp
- id: context
  doc: "methylation pattern type [CG|CHG|CHH], multiple types separated by ','. [default:\
    \ all]"
  type: string
  inputBinding:
    prefix: --context
outputs: []
cwlVersion: v1.1
baseCommand:
- methratio.py
