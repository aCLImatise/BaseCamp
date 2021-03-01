class: CommandLineTool
id: panaroo_img.cwl
inputs:
- id: in_tree
  doc: A dated phylogeny.
  type: string?
  inputBinding:
    prefix: --tree
- id: in_pa
  doc: A presence/absence produced by Panaroo.
  type: string?
  inputBinding:
    prefix: --pa
- id: in_out_dir
  doc: location of an output directory
  type: Directory?
  inputBinding:
    prefix: --out_dir
- id: in_number_seperate_use
  doc: "Number of seperate rate classes to use for the\ndispensable genome. Can be\
    \ either 1 or 2."
  type: string?
  inputBinding:
    prefix: -D
- id: in_no_essential
  doc: Removes essential gene class from model
  type: boolean?
  inputBinding:
    prefix: --no_essential
- id: in_no_constraint
  doc: Removes constraint that u/v must equal the genome
  type: boolean?
  inputBinding:
    prefix: --no_constraint
- id: in_fit
  doc: "Whether to use the gene frequency spectrum or the\ncore/pangeome size for\
    \ fitting (default=gf)"
  type: string?
  inputBinding:
    prefix: --fit
- id: in_in_it_u_one
  doc: Initial value for u1 (default=0.01).
  type: long?
  inputBinding:
    prefix: --init_u1
- id: in_in_it_u_two
  doc: Initial value for u2 (default=0.01).
  type: long?
  inputBinding:
    prefix: --init_u2
- id: in_in_it_v_one
  doc: Initial value for v1 (default=0.01).
  type: long?
  inputBinding:
    prefix: --init_v1
- id: in_in_it_v_two
  doc: Initial value for v2 (default=0.01).
  type: long?
  inputBinding:
    prefix: --init_v2
- id: in_in_it_ess
  doc: "Initial value for the number of essential genes\n(default=2000)."
  type: long?
  inputBinding:
    prefix: --init_ess
- id: in_verbose
  doc: print additional output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_size_dot
  doc: --model {coalescent,fixed}
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: location of an output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- panaroo-img
