class: CommandLineTool
id: pairtools_parse.cwl
inputs:
- id: chrom_s_path
  doc: 'Chromosome order used to flip interchromosomal mates: path to a chromosomes
    file (e.g. UCSC chrom.sizes or similar) whose first column lists scaffold names.
    Any scaffolds not listed will be ordered lexicographically following the names
    provided.  [required]'
  type: string
  inputBinding:
    prefix: --chroms-path
- id: output
  doc: output file.  If the path ends with .gz or .lz4, the output is pbgzip-/lz4-compressed.By
    default, the output is printed into stdout.
  type: string
  inputBinding:
    prefix: --output
- id: assembly
  doc: Name of genome assembly (e.g. hg19, mm10) to store in the pairs header.
  type: string
  inputBinding:
    prefix: --assembly
- id: min_mapq
  doc: 'The minimal MAPQ score to consider a read as uniquely mapped  [default: 1]'
  type: long
  inputBinding:
    prefix: --min-mapq
- id: max_molecule_size
  doc: 'The maximal size of a Hi-C molecule; used to rescue single ligationsfrom molecules
    with three alignments.  [default: 2000]'
  type: long
  inputBinding:
    prefix: --max-molecule-size
- id: drop_read_id
  doc: If specified, do not add read ids to the output
  type: boolean
  inputBinding:
    prefix: --drop-readid
- id: drop_seq
  doc: If specified, remove sequences and PHREDs from the sam fields
  type: boolean
  inputBinding:
    prefix: --drop-seq
- id: drop_sam
  doc: If specified, do not add sams to the output
  type: boolean
  inputBinding:
    prefix: --drop-sam
- id: add_columns
  doc: 'Report extra columns describing alignments Possible values (can take multiple
    values as a comma-separated list): a SAM tag (any pair of uppercase letters) or
    mapq, pos5, pos3, cigar, read_len, matched_bp, algn_ref_span, algn_read_span,
    dist_to_5, dist_to_3, seq.'
  type: string
  inputBinding:
    prefix: --add-columns
- id: output_parsed_alignments
  doc: output file for all parsed alignments, including walks. Useful for debugging
    and rnalysis of walks. If file exists, it will be open in the append mode. If
    the path ends with .gz or .lz4, the output is pbgzip-/lz4-compressed. By default,
    not used.
  type: string
  inputBinding:
    prefix: --output-parsed-alignments
- id: output_stats
  doc: output file for various statistics of pairs file.  By default, statistics is
    not generated.
  type: string
  inputBinding:
    prefix: --output-stats
- id: report_alignment_end
  doc: "[5|3]    specifies whether the 5' or 3' end of the alignment is reported as\
    \ the position of the Hi-C read."
  type: boolean
  inputBinding:
    prefix: --report-alignment-end
- id: max_inter_align_gap
  doc: 'read segments that are not covered by any alignment and longer than the specified
    value are treated as "null" alignments. These null alignments convert otherwise
    linear alignments into walks, and affect how they get reported as a Hi-C pair
    (see --walks-policy).  [default: 20]'
  type: long
  inputBinding:
    prefix: --max-inter-align-gap
- id: walks_policy
  doc: "[mask|all|5any|5unique|3any|3unique] the policy for reporting unrescuable\
    \ walks (reads containing more than one alignment on one or both sides, that can\
    \ not be explained by a single ligation between two mappable DNA fragments). \"\
    mask\" - mask walks (chrom=\"!\", pos=0, strand=\"-\");  \"all\" - report all\
    \ pairs of consecutive alignments [NOT IMPLEMENTED];  \"5any\" - report the 5'-most\
    \ alignment on each side; \"5unique\" - report the 5'-most unique alignment on\
    \ each side, if present; \"3any\" - report the 3'-most alignment on each side;\
    \ \"3unique\" - report the 3'-most unique alignment on each side, if present.\
    \  [default: mask]"
  type: boolean
  inputBinding:
    prefix: --walks-policy
- id: no_flip
  doc: If specified, do not flip pairs in genomic order and instead preserve the order
    in which they were sequenced.
  type: boolean
  inputBinding:
    prefix: --no-flip
- id: nproc_in
  doc: 'Number of processes used by the auto-guessed input decompressing command.  [default:
    3]'
  type: long
  inputBinding:
    prefix: --nproc-in
- id: nproc_out
  doc: 'Number of processes used by the auto-guessed output compressing command.  [default:
    8]'
  type: long
  inputBinding:
    prefix: --nproc-out
- id: cmd_in
  doc: 'A command to decompress the input file. If provided, fully overrides the auto-guessed
    command. Does not work with stdin. Must read input from stdin and print output
    into stdout. EXAMPLE: pbgzip -dc -n 3'
  type: string
  inputBinding:
    prefix: --cmd-in
- id: cmd_out
  doc: 'A command to compress the output file. If provided, fully overrides the auto-guessed
    command. Does not work with stdout. Must read input from stdin and print output
    into stdout. EXAMPLE: pbgzip -c -n 8'
  type: string
  inputBinding:
    prefix: --cmd-out
outputs: []
cwlVersion: v1.1
baseCommand:
- pairtools
- parse
