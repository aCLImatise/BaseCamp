class: CommandLineTool
id: sstacks.cwl
inputs:
- id: in_path
  doc: ': path to the directory containing Stacks files.'
  type: boolean
  inputBinding:
    prefix: --in-path
- id: pop_map
  doc: ': path to a population map file from which to take sample names.'
  type: boolean
  inputBinding:
    prefix: --popmap
- id: sample
  doc: ': filename prefix from which to load sample loci.'
  type: boolean
  inputBinding:
    prefix: --sample
- id: catalog
  doc: ': path to the catalog.'
  type: boolean
  inputBinding:
    prefix: --catalog
- id: threads
  doc: ': enable parallel execution with n_threads threads.'
  type: boolean
  inputBinding:
    prefix: --threads
- id: out_path
  doc: ': output path to write results.'
  type: boolean
  inputBinding:
    prefix: --out-path
- id: x
  doc: ": don't verify haplotype of matching locus."
  type: boolean
  inputBinding:
    prefix: -x
- id: disable_gapped
  doc: ': disable gapped alignments between stacks (default: enable gapped alignments).'
  type: boolean
  inputBinding:
    prefix: --disable-gapped
outputs: []
cwlVersion: v1.1
baseCommand:
- sstacks
