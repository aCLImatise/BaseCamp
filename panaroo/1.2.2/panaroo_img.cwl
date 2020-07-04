class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/panaroo_img.cwl
inputs:
- id: tree
  doc: A dated phylogeny.
  type: string
  inputBinding:
    prefix: --tree
- id: pa
  doc: A presence/absence produced by Panaroo.
  type: string
  inputBinding:
    prefix: --pa
- id: out_dir
  doc: location of an output directory
  type: string
  inputBinding:
    prefix: --out_dir
- id: number_seperate_use
  doc: Number of seperate rate classes to use for the dispensable genome. Can be either
    1 or 2.
  type: string
  inputBinding:
    prefix: -D
- id: no_essential
  doc: Removes essential gene class from model
  type: boolean
  inputBinding:
    prefix: --no_essential
- id: no_constraint
  doc: Removes constraint that u/v must equal the genome size.
  type: boolean
  inputBinding:
    prefix: --no_constraint
- id: model
  doc: Model to fit. Can be one of 'coalescent' or 'fixed'.
  type: string
  inputBinding:
    prefix: --model
- id: fit
  doc: Whether to use the gene frequency spectrum or the core/pangeome size for fitting
    (default=gf)
  type: string
  inputBinding:
    prefix: --fit
- id: in_it_u_one
  doc: Initial value for u1 (default=0.01).
  type: string
  inputBinding:
    prefix: --init_u1
- id: in_it_u_two
  doc: Initial value for u2 (default=0.01).
  type: string
  inputBinding:
    prefix: --init_u2
- id: in_it_v_one
  doc: Initial value for v1 (default=0.01).
  type: string
  inputBinding:
    prefix: --init_v1
- id: in_it_v_two
  doc: Initial value for v2 (default=0.01).
  type: string
  inputBinding:
    prefix: --init_v2
- id: in_it_ess
  doc: Initial value for the number of essential genes (default=2000).
  type: string
  inputBinding:
    prefix: --init_ess
- id: verbose
  doc: print additional output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: pana_roo_img_est
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- panaroo-img
