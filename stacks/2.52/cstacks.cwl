class: CommandLineTool
id: cstacks.cwl
inputs:
- id: in_path
  doc: ': path to the directory containing Stacks files.'
  type: boolean
  inputBinding:
    prefix: --in-path
- id: pop_map
  doc: ': path to a population map file.'
  type: boolean
  inputBinding:
    prefix: --popmap
- id: n
  doc: ': number of mismatches allowed between sample loci when build the catalog
    (default 1; suggested: set to ustacks -M).'
  type: boolean
  inputBinding:
    prefix: -n
- id: threads
  doc: ': enable parallel execution with num_threads threads.'
  type: boolean
  inputBinding:
    prefix: --threads
- id: s
  doc: ': sample prefix from which to load loci into the catalog.'
  type: boolean
  inputBinding:
    prefix: -s
- id: out_path
  doc: ': output path to write results.'
  type: boolean
  inputBinding:
    prefix: --outpath
- id: catalog
  doc: ': add to an existing catalog.'
  type: File
  inputBinding:
    prefix: --catalog
- id: max_gaps
  doc: ': number of gaps allowed between stacks before merging (default: 2).'
  type: boolean
  inputBinding:
    prefix: --max-gaps
- id: min_aln_len
  doc: ': minimum length of aligned sequence in a gapped alignment (default: 0.80).'
  type: boolean
  inputBinding:
    prefix: --min-aln-len
- id: disable_gapped
  doc: ': disable gapped alignments between stacks (default: use gapped alignments).'
  type: boolean
  inputBinding:
    prefix: --disable-gapped
- id: k_len
  doc: ': specify k-mer size for matching between between catalog loci (automatically
    calculated by default).'
  type: string
  inputBinding:
    prefix: --k-len
- id: report_m_matches
  doc: ': report query loci that match more than one catalog locus.'
  type: boolean
  inputBinding:
    prefix: --report-mmatches
outputs: []
cwlVersion: v1.1
baseCommand:
- cstacks
