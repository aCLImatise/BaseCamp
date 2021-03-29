class: CommandLineTool
id: cstacks.cwl
inputs:
- id: in_in_path
  doc: ': path to the directory containing Stacks files.'
  type: boolean?
  inputBinding:
    prefix: --in-path
- id: in_pop_map
  doc: ': path to a population map file.'
  type: boolean?
  inputBinding:
    prefix: --popmap
- id: in_number_mismatches_allowed
  doc: ': number of mismatches allowed between sample loci when build the catalog
    (default 1; suggested: set to ustacks -M).'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_threads
  doc: ': enable parallel execution with num_threads threads.'
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_sample_prefix_load
  doc: ': sample prefix from which to load loci into the catalog.'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_out_path
  doc: ': output path to write results.'
  type: File?
  inputBinding:
    prefix: --outpath
- id: in_catalog
  doc: ': add to an existing catalog.'
  type: File?
  inputBinding:
    prefix: --catalog
- id: in_max_gaps
  doc: ': number of gaps allowed between stacks before merging (default: 2).'
  type: boolean?
  inputBinding:
    prefix: --max-gaps
- id: in_min_aln_len
  doc: ': minimum length of aligned sequence in a gapped alignment (default: 0.80).'
  type: boolean?
  inputBinding:
    prefix: --min-aln-len
- id: in_disable_gapped
  doc: ': disable gapped alignments between stacks (default: use gapped alignments).'
  type: boolean?
  inputBinding:
    prefix: --disable-gapped
- id: in_k_len
  doc: ': specify k-mer size for matching between between catalog loci (automatically
    calculated by default).'
  type: long?
  inputBinding:
    prefix: --k-len
- id: in_report_m_matches
  doc: ': report query loci that match more than one catalog locus.'
  type: boolean?
  inputBinding:
    prefix: --report-mmatches
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
- cstacks
