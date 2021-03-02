class: CommandLineTool
id: secapr_find_target_contigs.cwl
inputs:
- id: in_contigs
  doc: "The directory containing the assembled contigs in\nfasta format."
  type: Directory?
  inputBinding:
    prefix: --contigs
- id: in_reference
  doc: "The fasta-file containign the reference sequences\n(probe-order-file)."
  type: File?
  inputBinding:
    prefix: --reference
- id: in_output
  doc: "The directory in which to store the extracted target\ncontigs and lastz results."
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_min_coverage
  doc: "The minimum percent coverage required for a match\n[default=80]."
  type: long?
  inputBinding:
    prefix: --min-coverage
- id: in_min_identity
  doc: "The minimum percent identity required for a match\n[default=80]."
  type: long?
  inputBinding:
    prefix: --min-identity
- id: in_keep_duplicates
  doc: "Use this flag in case you want to keep those contigs\nthat span across multiple\
    \ exons."
  type: boolean?
  inputBinding:
    prefix: --keep-duplicates
- id: in_keep_paralogs
  doc: "Use this flag in case you want to keep loci with signs\nof paralogy (multiple\
    \ contig matches). One randomely\nselected contig will be selected for these loci."
  type: boolean?
  inputBinding:
    prefix: --keep-paralogs
- id: in_disable_stats
  doc: "Use this flag if you want to disable generation of\nstats (can be necessary\
    \ because previous stats files\ncan't be found if files are used that were not\n\
    previously processed with SECAPR)\n"
  type: boolean?
  inputBinding:
    prefix: --disable_stats
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- secapr
- find_target_contigs
