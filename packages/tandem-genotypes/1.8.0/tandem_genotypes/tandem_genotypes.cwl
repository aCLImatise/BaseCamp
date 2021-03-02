class: CommandLineTool
id: tandem_genotypes.cwl
inputs:
- id: in_genes
  doc: read genes from a genePred or BED file
  type: File?
  inputBinding:
    prefix: --genes
- id: in_output
  doc: 'output format: 1=original, 2=alleles (default=1)'
  type: long?
  inputBinding:
    prefix: --output
- id: in_mis_map
  doc: "ignore any alignment with mismap probability > PROB\n(default=1e-06)"
  type: double?
  inputBinding:
    prefix: --mismap
- id: in_post_mask
  doc: ignore mostly-lowercase alignments (default=1)
  type: long?
  inputBinding:
    prefix: --postmask
- id: in_promoter
  doc: promoter length (default=300)
  type: long?
  inputBinding:
    prefix: --promoter
- id: in_select
  doc: "select: all repeats (0), non-intergenic repeats (1),\nnon-intergenic non-intronic\
    \ repeats (2) (default=0)"
  type: long?
  inputBinding:
    prefix: --select
- id: in_min_unit
  doc: ignore repeats with unit shorter than BP (default=2)
  type: long?
  inputBinding:
    prefix: --min-unit
- id: in_far
  doc: "require alignment >= BP beyond both sides of a repeat\n(default=100)"
  type: long?
  inputBinding:
    prefix: --far
- id: in_near
  doc: count insertions <= BP beyond a repeat (default=60)
  type: long?
  inputBinding:
    prefix: --near
- id: in_mode
  doc: L=lenient, S=strict (default=L)
  type: string?
  inputBinding:
    prefix: --mode
- id: in_scores
  doc: importance scores for gene parts
  type: File?
  inputBinding:
    prefix: --scores
- id: in_verbose
  doc: show more details
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_micro_sat_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_alignments_dot_maf
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tandem-genotypes:1.8.0--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- tandem-genotypes
