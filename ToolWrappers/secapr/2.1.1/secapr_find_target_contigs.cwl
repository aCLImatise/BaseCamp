class: CommandLineTool
id: secapr_find_target_contigs.cwl
inputs:
- id: in_contigs
  doc: "The directory containing the assembled contigs in\nfasta format. Alternatively\
    \ you can provide a\ndirectory with subfolders containing results of\nvarious\
    \ assembly runs (e.g. based on different kmer\nvalues). In the latter case it\
    \ is recommended to use\nthe --keep_paralogs flag, to avoid the majority of\n\
    loci being discarded as paralogous."
  type: Directory?
  inputBinding:
    prefix: --contigs
- id: in_reference
  doc: "The fasta-file containing the reference sequences (one\nsequence per targeted\
    \ locus)."
  type: File?
  inputBinding:
    prefix: --reference
- id: in_output
  doc: "The directory in which to store the extracted target\ncontigs and lastz results."
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_target_length
  doc: "The required length of the matching sequence stretch\nbetween contigs and\
    \ target sequences. This does not\nhave to be a perfect match but can be adjusted\
    \ with\nthe --min_identity flag [default=50]."
  type: long?
  inputBinding:
    prefix: --target_length
- id: in_min_identity
  doc: "The minimum percent identity required for a match\n[default=90]."
  type: long?
  inputBinding:
    prefix: --min_identity
- id: in_seed_length
  doc: "Length of initial seed sequence for finding BLAST\nmatches. The seed has to\
    \ be a perfect match between a\ngiven contig and a reference locus (default=11)."
  type: long?
  inputBinding:
    prefix: --seed_length
- id: in_remove_multilocus_contigs
  doc: Drop those contigs that match multiple exons.
  type: boolean?
  inputBinding:
    prefix: --remove_multilocus_contigs
- id: in_keep_paralogs
  doc: "Keep contigs for loci that are flagged as potentially\nparalogous (multiple\
    \ contigs matching same locus). The\nlongest contig will be selected for these\
    \ loci.\n"
  type: boolean?
  inputBinding:
    prefix: --keep_paralogs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/secapr:2.1.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- secapr
- find_target_contigs
