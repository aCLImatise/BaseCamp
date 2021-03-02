class: CommandLineTool
id: clean_genes.cwl
inputs:
- id: in_start
  doc: Require conserved start codons (all species)
  type: boolean?
  inputBinding:
    prefix: --start
- id: in_stop
  doc: Require conserved stop codons (all species)
  type: boolean?
  inputBinding:
    prefix: --stop
- id: in_splice
  doc: "Require conserved splice sites (all species).  By default,\nonly GT-AG, GC-AG,\
    \ and AT-AC splice sites are allowed (see also\n--splice-strict)"
  type: boolean?
  inputBinding:
    prefix: --splice
- id: in_f_shift
  doc: "Require that no frame-shift gap is present in any species.  Frame\nshifts\
    \ are evaluated with respect to the reference sequence.  Gaps\nthat have non-multiple-of-three\
    \ lengths are allowed if\ncompensatory gaps occur nearby (see source code for\
    \ details)."
  type: boolean?
  inputBinding:
    prefix: --fshift
- id: in_nonsense
  doc: Require that no premature stop codon is present in any species.
  type: boolean?
  inputBinding:
    prefix: --nonsense
- id: in_conserved
  doc: "Implies --start, --stop, --splice, --fshift, and --nonsense.\nRecommended\
    \ option for cross-species analysis."
  type: boolean?
  inputBinding:
    prefix: --conserved
- id: in_n_limit
  doc: "Maximum fraction of bases aligned to CDSs that are Ns in any\nspecies (<f>\
    \ must be between 0 and 1).  Default is 0.05.  Set to 1\nto allow any number of\
    \ Ns."
  type: long?
  inputBinding:
    prefix: --N-limit
- id: in_clean_gaps
  doc: "Require all cds gaps to be multiples of three in length.  Can be\nused with\
    \ --conserved."
  type: boolean?
  inputBinding:
    prefix: --clean-gaps
- id: in_in_del_strict
  doc: "Implies --clean_gaps, usually used with --conserved.  Prohibits\noverlapping\
    \ cds gaps in different sequences, gaps near cds\nboundaries, and gaps in the\
    \ reference sequence within and between\nflanking features (splice sites, etc.;\
    \ see code for details).\nDesigned for use in training a phylo-HMM with an indel\
    \ model."
  type: boolean?
  inputBinding:
    prefix: --indel-strict
- id: in_splice_strict
  doc: "Implies --splice.  Allow only GT-AG canonical splice sites.  Useful\nwhen\
    \ training a gene finder with a simple model for splice sites."
  type: boolean?
  inputBinding:
    prefix: --splice-strict
- id: in_group_by
  doc: "Group features according to specified tag (default\n\"transcript_id\").  If\
    \ any feature within a group fails, the\nentire group will be discarded.  By choosing\
    \ to group features\naccording to different criteria, you can make the program\n\
    \"clean\" the data set at different levels.  For example, to\nclean at the level\
    \ of individual exons, add a tag like\n\"exon_id\" to indicate exons (see the\
    \ program \"refeature\"),\nand then invoke clean_genes with \"--groupby exon_id\"\
    ."
  type: string?
  inputBinding:
    prefix: --groupby
- id: in_msa_format
  doc: "|PHYLIP|MPM|MAF|SS\nAlignment file format.  Default is to guess format from\
    \ file\ncontents."
  type: File?
  inputBinding:
    prefix: --msa-format
- id: in_refseq
  doc: "(Required with --msa-format MAF)  Complete reference\nsequence for alignment\
    \ (FASTA format)."
  type: File?
  inputBinding:
    prefix: --refseq
- id: in_offset_five
  doc: "(Default 0)  Offset of canonical \"GT\" with respect to boundary\non *intron\
    \ side* of annotated 5' splice sites.  Useful with\nannotations that describe\
    \ a window around the canonical splice site."
  type: long?
  inputBinding:
    prefix: --offset5
- id: in_offset_three
  doc: "(Default 0)  Offset of canonical \"AG\" with respect to boundary\non intron\
    \ side of annotated 3' splice sites."
  type: long?
  inputBinding:
    prefix: --offset3
- id: in_log
  doc: Write human-readable log to specified file.
  type: File?
  inputBinding:
    prefix: --log
- id: in_machine_log
  doc: Like --log, but produces more concise, machine-readable log.
  type: string?
  inputBinding:
    prefix: --machine-log
- id: in_stats
  doc: Write statistics on retained and discarded features to specified file.
  type: File?
  inputBinding:
    prefix: --stats
- id: in_discards
  doc: Write discarded features to specified file.
  type: File?
  inputBinding:
    prefix: --discards
- id: in_no_output
  doc: "Suppress output of \"cleaned\" features to stdout.  Useful if only\nlog file\
    \ and/or stats are of interest."
  type: File?
  inputBinding:
    prefix: --no-output
- id: in_gff_fname
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_msa_fname
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_no_output
  doc: "Suppress output of \"cleaned\" features to stdout.  Useful if only\nlog file\
    \ and/or stats are of interest."
  type: File?
  outputBinding:
    glob: $(inputs.in_no_output)
hints: []
cwlVersion: v1.1
baseCommand:
- clean_genes
