class: CommandLineTool
id: sstacks.cwl
inputs:
- id: in_in_path
  doc: ': path to the directory containing Stacks files.'
  type: boolean?
  inputBinding:
    prefix: --in-path
- id: in_pop_map
  doc: ': path to a population map file from which to take sample names.'
  type: boolean?
  inputBinding:
    prefix: --popmap
- id: in_sample
  doc: ': filename prefix from which to load sample loci.'
  type: boolean?
  inputBinding:
    prefix: --sample
- id: in_catalog
  doc: ': path to the catalog.'
  type: boolean?
  inputBinding:
    prefix: --catalog
- id: in_threads
  doc: ': enable parallel execution with n_threads threads.'
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_out_path
  doc: ': output path to write results.'
  type: File?
  inputBinding:
    prefix: --out-path
- id: in_verify_haplotype_locus
  doc: ": don't verify haplotype of matching locus."
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_disable_gapped
  doc: ': disable gapped alignments between stacks (default: enable gapped alignments).'
  type: boolean?
  inputBinding:
    prefix: --disable-gapped
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_path
  doc: ': output path to write results.'
  type: File?
  outputBinding:
    glob: $(inputs.in_out_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/stacks:2.55--he513fc3_0
cwlVersion: v1.1
baseCommand:
- sstacks
