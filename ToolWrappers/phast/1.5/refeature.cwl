class: CommandLineTool
id: refeature.cwl
inputs:
- id: in_include_only
  doc: "Include only features of the specified types (comma-delimited list);\nfilter\
    \ out everything else."
  type: string
  inputBinding:
    prefix: --include-only
- id: in_include_groups
  doc: "Include only groups whose names are listed in the specified file.\nGroup names\
    \ in file must be delimited by white-space (can be on\nany number of lines)."
  type: File
  inputBinding:
    prefix: --include-groups
- id: in_sort
  doc: "Sort features primarily by start position and secondarily\nby end position\
    \ (usually has desired effect in case of short\noverlapping features, e.g., start\
    \ & stop codons).  Features\nwill be sorted both across groups and within groups,\
    \ but members\nof a group will be kept together."
  type: boolean
  inputBinding:
    prefix: --sort
- id: in_unique
  doc: "Ensures that output contains no overlapping groups (or\nsubgroups, if -e).\
    \  If groups overlap, the one with the highest\nscore (if available) or longest\
    \ length (if no score) is kept and\nothers are discarded.  Warning: long UTRs\
    \ can have undesirable\nresults; filter out UTR exons to avoid."
  type: boolean
  inputBinding:
    prefix: --unique
- id: in_group_by
  doc: Group features according to specified tag (default "transcript_id")
  type: string
  inputBinding:
    prefix: --groupby
- id: in_exon_group
  doc: "Sub-group features into contiguous sets, and define\nsub-groups using specified\
    \ tag (e.g., \"exon_id\").  Can be\nused to group the features describing individual\
    \ exons, e.g.,\neach CDS and its flanking splice sites.  Only features in the\n\
    same major group will be included in the same minor group\n(e.g., exons of the\
    \ same transcript)."
  type: string
  inputBinding:
    prefix: --exongroup
- id: in_fix_start_stop
  doc: "Ensure that CDS features include start codons and exclude stop\ncodons, as\
    \ required by the GTF2 standard.  Assumes at most one\nstart_codon and at most\
    \ one stop_codon per group."
  type: boolean
  inputBinding:
    prefix: --fix-start-stop
- id: in_add_utrs
  doc: "Create UTR features for portions of exons outside CDS (only\nuseful with GFF\
    \ output; features must be grouped at level\nof transcript)."
  type: boolean
  inputBinding:
    prefix: --add-utrs
- id: in_add_introns
  doc: "Create intron features between exons (only useful with GFF output;\nfeatures\
    \ must be grouped at level of transcript)."
  type: boolean
  inputBinding:
    prefix: --add-introns
- id: in_add_signals
  doc: "Adds features for start and stop codons and 3' and 5' splice\nsites (only\
    \ useful with GFF output; features must be grouped\nat level of transcript). \
    \ Start and stop codons will be added\nas required by the GTF2 standard (--fix-start-stop\
    \ is not\nnecessary).  Warning: does not correctly handle case of splice\nsite\
    \ in middle of start or stop codon."
  type: boolean
  inputBinding:
    prefix: --add-signals
- id: in_output
  doc: "|bed|genepred|wig\nOutput format (default gff).  Note that wig output is fixedStep\n\
    can only be used if all elements have a score and are of equal\nlength."
  type: long
  inputBinding:
    prefix: --output
- id: in_simple_bed
  doc: "(for use with --output bed) Create a separate line for each\nfeature in bed\
    \ output (by default, all features of a group are\ndescribed by a single line)."
  type: boolean
  inputBinding:
    prefix: --simplebed
- id: in_discards
  doc: Write any discarded features to specified file.
  type: File
  inputBinding:
    prefix: --discards
- id: in_in_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- refeature
