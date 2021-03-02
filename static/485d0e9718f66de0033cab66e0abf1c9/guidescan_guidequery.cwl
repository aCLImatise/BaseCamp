class: CommandLineTool
id: guidescan_guidequery.cwl
inputs:
- id: in_target
  doc: '[--flankdistance FLANKDISTANCE]'
  type: string?
  inputBinding:
    prefix: --target
- id: in_path_bam_required
  doc: path to BAM file with precomputed guideRNAs. REQUIRED
  type: File?
  inputBinding:
    prefix: -b
- id: in_coordinates_form_example
  doc: "coordinates in the form \"<chr>:<start>-<end>\"\n;example: chrX:3364088-3372035,\
    \ mutually exclusive\nwith --batch"
  type: long?
  inputBinding:
    prefix: -c
- id: in_batch
  doc: "absolute filepath to a BED file, GTF file where the\nfirst field (column)\
    \ contains chromosome information\n(chr#:), or a txt file composed of a single\
    \ field\n(column) of genomic coordinates of the following\nformat: chr#:start-end,\
    \ mutually exclusive with -c"
  type: File?
  inputBinding:
    prefix: --batch
- id: in_sequence
  doc: "sequence file is fasta file format. sequences will be\nprocessed through locally\
    \ installed blat binary and\nsequences with perfect matches to a specified genome\n\
    will be processed. If a perfect match does not exist,\nthe individual query will\
    \ not be processed"
  type: File?
  inputBinding:
    prefix: --sequence
- id: in_flank_distance
  doc: "the distance flanking both the upstream and downstream\nregions of a target\
    \ coordinate.Default is 1000."
  type: long?
  inputBinding:
    prefix: --flankdistance
- id: in_input_coordinates_based
  doc: "whether input coordinates are 1-based (default is\n0-based); output is always\
    \ in BED format and 0-based"
  type: boolean?
  inputBinding:
    prefix: --one
- id: in_name_output_required
  doc: name of output directory. REQUIRED
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_output_format
  doc: "file format for output can either be bed (bed) or csv\n(csv) format. Default\
    \ is csv."
  type: File?
  inputBinding:
    prefix: --output_format
- id: in_header
  doc: whether header should be included in output
  type: boolean?
  inputBinding:
    prefix: --header
- id: in_off
  doc: "whether detailed info about off-targets of each\nguideRNA should be included\
    \ in output (each off-target\nin a separate line); default is to include only\n\
    summary about all off-targets of a guideRNA. Must be\nutilized with csv output\
    \ format (which is default)"
  type: boolean?
  inputBinding:
    prefix: --off
- id: in_sort
  doc: "sort sgRNAs by fewest off-targets (offtargets),\nhighest Rule 2 Set cutting\
    \ efficiencyscore (score),\nhighest CFD cutting specificity (specificity), or\n\
    sgRNAs closest to the target region (coordinates).\nDefault is coordinates. Mutually\
    \ exclusive with\nselect."
  type: long?
  inputBinding:
    prefix: --sort
- id: in_select
  doc: "guidequery chooses n optimal sgRNAs based on\nemphasizing fewest off-targets\
    \ then sorts by Rule 2\nSet cutting efficiency (offtargets) or it chooses n\n\
    optimal sgRNAsbased on emphasizing highest Rule 2 Set\ncutting efficiency score\
    \ then sorts by fewest off-\ntargets (score). Also can choose n sgRNAs closes\
    \ to\ntarget and sorts by offtargets (coordinates). Also can\nchoose n sgRNAs\
    \ with highest CFD score and sorts by\nofftargets. Mutually exclusive with sort."
  type: long?
  inputBinding:
    prefix: --select
- id: in_amount_optimal_sgrnas
  doc: "amount of optimal sgRNAs desired from the --select\nparameter. Ignored if\
    \ --select not used. Default is 3."
  type: long?
  inputBinding:
    prefix: -n
- id: in_an_not
  doc: "path to BED file with coordinates of genomic features\nthat should be used\
    \ for annotation (format\n(tabulated): chrom, start, end, name); for example,\n\
    use Table Browser https://genome.ucsc.edu/cgi-\nbin/hgTables to create such BED\
    \ files of various\nkinds; alternatively, use here short names for\npreinstalled\
    \ exon annotations: \"hg38\" for human, \"dm6\"\nfor fly, \"mm10\" for mouse,\
    \ \"sacSer3\" for yeast, ce11\nfor c. elegans"
  type: File?
  inputBinding:
    prefix: --annot
- id: in_feature_bed_file
  doc: "path to BED file with genomic features of interest\nsuch that user can upload\
    \ a BED file with feature\nnames (in 4th field) and GuideScan will map the\ngenomic\
    \ coordinates to the feature"
  type: File?
  inputBinding:
    prefix: --feature_bed_file
- id: in_fast_a_file
  doc: "fasta file with index located in same directory so\nthat --sequence queries\
    \ can be processed"
  type: File?
  inputBinding:
    prefix: --fasta_file
- id: in_blat
  doc: "absolute filepath to blat tool. Binary packages for\nlocally running blat\
    \ are found within GuideScan\nsoftware at ./blat_binaries"
  type: File?
  inputBinding:
    prefix: --blat
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_output_required
  doc: name of output directory. REQUIRED
  type: Directory?
  outputBinding:
    glob: $(inputs.in_name_output_required)
- id: out_output_format
  doc: "file format for output can either be bed (bed) or csv\n(csv) format. Default\
    \ is csv."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_format)
hints: []
cwlVersion: v1.1
baseCommand:
- guidescan_guidequery
