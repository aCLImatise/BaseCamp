class: CommandLineTool
id: megalodon_extras_variants_resolve.cwl
inputs:
- id: in_output_filename
  doc: "Output filename. Default:\nmegalodon.consolidated_variants.vcf"
  type: File?
  inputBinding:
    prefix: --output-filename
- id: in_max_likelihood_ratio
  doc: "Maximum likelihood ratio ([ref prob] / [max alt prob])\nto include variant\
    \ in output. Allows output of\nuncertain reference calls. Default: 1; Include\
    \ only\nsites called as alternative."
  type: long?
  inputBinding:
    prefix: --max-likelihood-ratio
- id: in_min_depth
  doc: "Minimum depth to include a variant. Default: No depth\nfilter"
  type: long?
  inputBinding:
    prefix: --min-depth
- id: in_trim_variants
  doc: "Trim extra padding sequence included by megalodon\n(e.g. around repeat-region\
    \ indels). Default: Output as\nfound in input variants."
  type: boolean?
  inputBinding:
    prefix: --trim-variants
- id: in_reverse_strand_variants
  doc: "Variants file produced only from reads mapping to the\nreverse strand. If\
    \ provided, this assumes that the\nmain variants file contains variants only supported\
    \ by\nreads from the forward strand. This is used to\nidentify systematic basecalling\
    \ error variants. Errors\nmade on both strands indicate potential putative\nvariants\
    \ and are thus excluded. Homopolymer variants\noccuring on both strands are included\
    \ by default.\nExclude these variants as well by setting --exclude-\nboth-strand-homopolymers\
    \ ."
  type: File?
  inputBinding:
    prefix: --reverse-strand-variants
- id: in_homopolymer_min_length
  doc: "Minimum length to consider a variant as a homopolymer.\nDefault: 4"
  type: long?
  inputBinding:
    prefix: --homopolymer-min-length
- id: in_exclude_both_strand_homopolymers
  doc: "By default homopolymer variants are included even if\nthey occur on both strands.\
    \ Set this flag to treat\nhomopolymer variants as other variants.\n"
  type: boolean?
  inputBinding:
    prefix: --exclude-both-strand-homopolymers
- id: in_field_dot
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_filename
  doc: "Output filename. Default:\nmegalodon.consolidated_variants.vcf"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_filename)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/megalodon:2.2.10--py38h0213d0e_0
cwlVersion: v1.1
baseCommand:
- megalodon_extras
- variants
- resolve
