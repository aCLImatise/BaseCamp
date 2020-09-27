class: CommandLineTool
id: pairtools_parse.cwl
inputs:
- id: in_chrom_s_path
  doc: "Chromosome order used to flip\ninterchromosomal mates: path to a\nchromosomes\
    \ file (e.g. UCSC chrom.sizes or\nsimilar) whose first column lists scaffold\n\
    names. Any scaffolds not listed will be\nordered lexicographically following the\n\
    names provided.  [required]"
  type: File
  inputBinding:
    prefix: --chroms-path
- id: in_output_file_path
  doc: "output file.  If the path ends with .gz or\n.lz4, the output is\npbgzip-/lz4-compressed.By\
    \ default, the\noutput is printed into stdout."
  type: File
  inputBinding:
    prefix: --output
- id: in_assembly
  doc: "Name of genome assembly (e.g. hg19, mm10) to\nstore in the pairs header."
  type: long
  inputBinding:
    prefix: --assembly
- id: in_min_mapq
  doc: "The minimal MAPQ score to consider a read as\nuniquely mapped  [default: 1]"
  type: long
  inputBinding:
    prefix: --min-mapq
- id: in_max_molecule_size
  doc: "The maximal size of a Hi-C molecule; used to\nrescue single ligationsfrom\
    \ molecules with\nthree alignments.  [default: 2000]"
  type: long
  inputBinding:
    prefix: --max-molecule-size
- id: in_drop_read_id
  doc: If specified, do not add read ids to the
  type: boolean
  inputBinding:
    prefix: --drop-readid
- id: in_drop_sam
  doc: If specified, do not add sams to the output
  type: boolean
  inputBinding:
    prefix: --drop-sam
- id: in_add_columns
  doc: "Report extra columns describing alignments\nPossible values (can take multiple\
    \ values as\na comma-separated list): a SAM tag (any pair\nof uppercase letters)\
    \ or mapq, pos5, pos3,\ncigar, read_len, matched_bp, algn_ref_span,\nalgn_read_span,\
    \ dist_to_5, dist_to_3, seq."
  type: long
  inputBinding:
    prefix: --add-columns
- id: in_output_parsed_alignments
  doc: "output file for all parsed alignments,\nincluding walks. Useful for debugging\
    \ and\nrnalysis of walks. If file exists, it will\nbe open in the append mode.\
    \ If the path ends\nwith .gz or .lz4, the output is\npbgzip-/lz4-compressed. By\
    \ default, not\nused."
  type: File
  inputBinding:
    prefix: --output-parsed-alignments
- id: in_output_stats
  doc: output file for various statistics of pairs
  type: File
  inputBinding:
    prefix: --output-stats
- id: in_max_inter_align_gap
  doc: "read segments that are not covered by any\nalignment and longer than the specified\n\
    value are treated as \"null\" alignments.\nThese null alignments convert otherwise\n\
    linear alignments into walks, and affect how\nthey get reported as a Hi-C pair\
    \ (see\n--walks-policy).  [default: 20]"
  type: long
  inputBinding:
    prefix: --max-inter-align-gap
- id: in_walks_policy
  doc: "[mask|all|5any|5unique|3any|3unique]\nthe policy for reporting unrescuable\
    \ walks\n(reads containing more than one alignment on\none or both sides, that\
    \ can not be explained\nby a single ligation between two mappable\nDNA fragments).\
    \ \"mask\" - mask walks\n(chrom=\"!\", pos=0, strand=\"-\");  \"all\" -\nreport\
    \ all pairs of consecutive alignments\n[NOT IMPLEMENTED];  \"5any\" - report the\n\
    5'-most alignment on each side; \"5unique\" -\nreport the 5'-most unique alignment\
    \ on each\nside, if present; \"3any\" - report the\n3'-most alignment on each\
    \ side; \"3unique\" -\nreport the 3'-most unique alignment on each\nside, if present.\
    \  [default: mask]"
  type: boolean
  inputBinding:
    prefix: --walks-policy
- id: in_no_flip
  doc: "If specified, do not flip pairs in genomic\norder and instead preserve the\
    \ order in\nwhich they were sequenced."
  type: boolean
  inputBinding:
    prefix: --no-flip
- id: in_nproc_in
  doc: "Number of processes used by the auto-guessed\ninput decompressing command.\
    \  [default: 3]"
  type: long
  inputBinding:
    prefix: --nproc-in
- id: in_nproc_out
  doc: "Number of processes used by the auto-guessed\noutput compressing command.\
    \  [default: 8]"
  type: long
  inputBinding:
    prefix: --nproc-out
- id: in_cmd_in
  doc: "A command to decompress the input file. If\nprovided, fully overrides the\
    \ auto-guessed\ncommand. Does not work with stdin. Must read\ninput from stdin\
    \ and print output into\nstdout. EXAMPLE: pbgzip -dc -n 3"
  type: File
  inputBinding:
    prefix: --cmd-in
- id: in_cmd_out
  doc: "A command to compress the output file. If\nprovided, fully overrides the auto-guessed\n\
    command. Does not work with stdout. Must\nread input from stdin and print output\
    \ into\nstdout. EXAMPLE: pbgzip -c -n 8"
  type: File
  inputBinding:
    prefix: --cmd-out
- id: in__dropseq_specified
  doc: --drop-seq                      If specified, remove sequences and PHREDs
  type: string
  inputBinding:
    position: 0
- id: in_file_dot
  doc: By default, statistics is not
  type: File
  inputBinding:
    position: 0
- id: in_generated_dot
  doc: --report-alignment-end [5|3]    specifies whether the 5' or 3' end of the
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_path
  doc: "output file.  If the path ends with .gz or\n.lz4, the output is\npbgzip-/lz4-compressed.By\
    \ default, the\noutput is printed into stdout."
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_path)
- id: out_output_parsed_alignments
  doc: "output file for all parsed alignments,\nincluding walks. Useful for debugging\
    \ and\nrnalysis of walks. If file exists, it will\nbe open in the append mode.\
    \ If the path ends\nwith .gz or .lz4, the output is\npbgzip-/lz4-compressed. By\
    \ default, not\nused."
  type: File
  outputBinding:
    glob: $(inputs.in_output_parsed_alignments)
- id: out_output_stats
  doc: output file for various statistics of pairs
  type: File
  outputBinding:
    glob: $(inputs.in_output_stats)
cwlVersion: v1.1
baseCommand:
- pairtools
- parse
