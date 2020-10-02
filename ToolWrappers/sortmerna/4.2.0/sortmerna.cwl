class: CommandLineTool
id: sortmerna.cwl
inputs:
- id: in_ref
  doc: "PATH        Required  Reference file (FASTA) absolute or relative path.\n\
    Use mutliple times, once per a reference file"
  type: boolean
  inputBinding:
    prefix: --ref
- id: in_reads
  doc: "PATH        Required  Raw reads file (FASTA/FASTQ/FASTA.GZ/FASTQ.GZ).\nUse\
    \ twice for files with paired reads"
  type: boolean
  inputBinding:
    prefix: --reads
- id: in_workdir
  doc: "PATH        Optional  Directory for storing Reference index,      USRDIR/sortmerna/run/\n\
    Key-value database, and the output.\nDefault structure:\nWORKDIR/\nidx/\nkvdb/\n\
    out/"
  type: File
  inputBinding:
    prefix: --workdir
- id: in_kv_db
  doc: "PATH        Optional  Directory for storing Key-value database    WORKDIR/kvdb\n\
    KVDB is used for storing alignement results."
  type: boolean
  inputBinding:
    prefix: --kvdb
- id: in_idx
  doc: PATH        Optional  Directory for storing Reference index.      WORKDIR/idx
  type: boolean
  inputBinding:
    prefix: --idx
- id: in_fast_x
  doc: BOOL        Optional  Output aligned reads into FASTA/FASTQ file
  type: boolean
  inputBinding:
    prefix: --fastx
- id: in_sam
  doc: BOOL        Optional  Output SAM alignment for aligned reads.
  type: boolean
  inputBinding:
    prefix: --sam
- id: in_sq
  doc: BOOL        Optional  Add SQ tags to the SAM file
  type: boolean
  inputBinding:
    prefix: --SQ
- id: in_blast
  doc: "STRING      Optional  output alignments in various Blast-like formats\n'0'\
    \                    - pairwise\n'1'                    - tabular(Blast - m 8\
    \ format)\n'1 cigar'              - tabular + column for CIGAR\n'1 cigar qcov'\
    \         - tabular + columns for CIGAR\nand query coverage\n'1 cigar qcov qstrand'\
    \ - tabular + columns for CIGAR,\nquery coverage and strand"
  type: boolean
  inputBinding:
    prefix: --blast
- id: in_aligned
  doc: "STRING/BOOL Optional  Aligned reads file prefix [dir/][pfx]       WORKDIR/out/aligned\n\
    Directory and file prefix for aligned output i.e.\neach output file will go into\
    \ the specified directory with the given prefix.\nThe appropriate extension (fasta|fastq|blast|sam|etc)\
    \ will be automatically added.\nBoth 'dir' and 'pfx' are optional.\nThe 'dir'\
    \ can be a relative or an absolute path.\nIf 'dir' is not specified, the output\
    \ will be created in the WORKDIR/out/\nIf 'pfx' is not specified, the prefix 'aligned'\
    \ will be used\nExamples:\n-aligned $MYDIR/dir_1/dir_2/1 -> $MYDIR/dir_1/dir_2/1.fasta\n\
    -aligned dir_1/apfx           -> $PWD/dir_1/apfx.fasta\n-aligned dir_1/      \
    \         -> $PWD/aligned.fasta\n-aligned apfx                 -> $PWD/apfx.fasta\n\
    -aligned  (no argument)       -> WORKDIR/out/aligned.fasta"
  type: boolean
  inputBinding:
    prefix: --aligned
- id: in_other
  doc: "STRING/BOOL Optional  Non-aligned reads file prefix [dir/][pfx]   WORKDIR/out/other\n\
    Must be used with 'fastx'.\nDirectory and file prefix for non-aligned output i.e.\n\
    each output file will go into the specified directory with the given prefix.\n\
    The appropriate extension (fasta|fastq|blast|sam|etc) will be automatically added.\n\
    Both 'dir' and 'pfx' are optional.\nThe 'dir' can be a relative or an absolute\
    \ path.\nIf 'dir' is not specified, the output will be created in the WORKDIR/out/\n\
    If 'pfx' is not specified, the prefix 'other' will be used\nExamples:\n-other\
    \ $MYDIR/dir_1/dir_2/1 -> $MYDIR/dir_1/dir_2/1.fasta\n-other dir_1/apfx      \
    \     -> $PWD/dir_1/apfx.fasta\n-other dir_1/               -> $PWD/dir_1/other.fasta\n\
    -other apfx                 -> $PWD/apfx.fasta\n-other  (no argument)       ->\
    \ aligned_out/other.fasta\ni.e. the same output directory as used\nfor aligned\
    \ output"
  type: boolean
  inputBinding:
    prefix: --other
- id: in_num_alignments
  doc: "INT         Optional  Positive integer (INT >=0).\nReport first INT alignments\
    \ per read reaching E-value\nIf INT = 0, all alignments will be output"
  type: boolean
  inputBinding:
    prefix: --num_alignments
- id: in_best
  doc: "INT         Optional  Report INT best alignments per read reaching E-value\
    \    1\nby searching --min_lis INT candidate alignments\nIf INT == 0: search All\
    \ candidate alignments\nIf INT > 0: search INT best alignments.\nThe larger is\
    \ the INT, the longer is the search time.\nExplanation:\nA read can potentially\
    \ be aligned (reaching E-value threshold)\nto multiple reference sequences.\n\
    The 'best' alignment is an alignment that is better\nthan the previously found\
    \ alignments.\nThe very first found alignment is automatically the best alignment\n\
    until a better one is found."
  type: boolean
  inputBinding:
    prefix: --best
- id: in_min_lis
  doc: "INT         Optional  Search all alignments having the first INT longest LIS\n\
    LIS stands for Longest Increasing Subsequence,\nit is computed using seeds' positions\
    \ to expand hits into\nlonger matches prior to Smith - Waterman alignment.\nRequires\
    \ option 'best'.\nMutually exclusive with option 'num_alignments'"
  type: boolean
  inputBinding:
    prefix: --min_lis
- id: in_print_all_reads
  doc: "Optional  Output null alignment strings for non-aligned reads     False\n\
    to SAM and/or BLAST tabular files"
  type: boolean
  inputBinding:
    prefix: --print_all_reads
- id: in_paired
  doc: "BOOL        Optional  Indicates a Single reads file with paired reads    \
    \     False\nIf a single reads file with paired reads is used,\nand neither 'paired_in'\
    \ nor 'paired_out' are specified,\nuse this option together with 'out2' to output\n\
    FWD and REV reads into separate files"
  type: boolean
  inputBinding:
    prefix: --paired
- id: in_paired_in
  doc: "BOOL        Optional  If one of the paired-end reads is Aligned,         \
    \     False\nput both reads into Aligned FASTA/Q file\nMust be used with 'fastx'.\n\
    Mutually exclusive with 'paired_out'."
  type: boolean
  inputBinding:
    prefix: --paired_in
- id: in_paired_out
  doc: "BOOL        Optional  If one of the paired-end reads is Non-aligned,     \
    \     False\nput both reads into Non-Aligned FASTA/Q file\nMust be used with 'fastx'.\n\
    Mutually exclusive with 'paired_in'."
  type: boolean
  inputBinding:
    prefix: --paired_out
- id: in_out_two
  doc: "BOOL        Optional  Output paired reads into separate files.           \
    \     False\nMust be used with 'fastx'.\nIgnored without either of 'paired_in'\
    \ |\n'paired_out' | 'paired' | two 'reads'"
  type: boolean
  inputBinding:
    prefix: --out2
- id: in_match
  doc: INT         Optional  SW score (positive integer) for a match.                2
  type: boolean
  inputBinding:
    prefix: --match
- id: in_mismatch
  doc: INT         Optional  SW penalty (negative integer) for a mismatch.          -3
  type: boolean
  inputBinding:
    prefix: --mismatch
- id: in_gap_open
  doc: INT         Optional  SW penalty (positive integer) for introducing a gap.    5
  type: boolean
  inputBinding:
    prefix: --gap_open
- id: in_gap_ext
  doc: INT         Optional  SW penalty (positive integer) for extending a gap.      2
  type: boolean
  inputBinding:
    prefix: --gap_ext
- id: in_double_optional_evalue
  doc: "DOUBLE      Optional  E-value threshold.                                 \
    \     1\nDefines the 'statistical significance' of a local alignment.\nExponentially\
    \ correllates with the Minimal Alignment Score.\nHigher E-values (100, 1000, ...)\
    \ cause More reads\nto Pass the alignment threshold"
  type: boolean
  inputBinding:
    prefix: -e
- id: in_bool_optional_forward
  doc: BOOL        Optional  Search only the forward strand.                         False
  type: boolean
  inputBinding:
    prefix: -F
- id: in_bool_optional_sw
  doc: "BOOL        Optional  SW penalty for ambiguous letters (N's) scored\nas --mismatch"
  type: boolean
  inputBinding:
    prefix: -N
- id: in_bool_optional_reversecomplementary
  doc: BOOL        Optional  Search only the reverse-complementary strand.           False
  type: boolean
  inputBinding:
    prefix: -R
- id: in_id
  doc: "INT         Optional  %%id similarity threshold (the alignment           \
    \     0.97\nmust still pass the E-value threshold)."
  type: boolean
  inputBinding:
    prefix: --id
- id: in_coverage
  doc: "INT         Optional  %%query coverage threshold (the alignment must     \
    \     0.97\nstill pass the E-value threshold)"
  type: boolean
  inputBinding:
    prefix: --coverage
- id: in_de_novo_otu
  doc: "BOOL        Optional  FASTA/FASTQ file for reads matching database < %%id\
    \     False\n(set using --id) and < %%cov (set using --coverage)\n(alignment must\
    \ still pass the E-value threshold)."
  type: boolean
  inputBinding:
    prefix: --de_novo_otu
- id: in_otu_map
  doc: BOOL        Optional  Output OTU map (input to QIIME's make_otu_table.py).    False
  type: boolean
  inputBinding:
    prefix: --otu_map
- id: in_passes
  doc: "INT,INT,INT Optional  Three intervals at which to place the seed on the read\
    \  L,L/2,3\n(L is the seed length)"
  type: boolean
  inputBinding:
    prefix: --passes
- id: in_edges
  doc: "INT         Optional  Number (or percent if INT followed by %% sign) of  \
    \     4\nnucleotides to add to each edge of the read\nprior to SW local alignment"
  type: boolean
  inputBinding:
    prefix: --edges
- id: in_num_seeds
  doc: "BOOL        Optional  Number of seeds matched before searching           \
    \     2\nfor candidate LIS"
  type: boolean
  inputBinding:
    prefix: --num_seeds
- id: in_full_search
  doc: "INT         Optional  Search for all 0-error and 1-error seed            \
    \     False\nmatches in the index rather than stopping\nafter finding a 0-error\
    \ match (<1%% gain in\nsensitivity with up four-fold decrease in speed)"
  type: boolean
  inputBinding:
    prefix: --full_search
- id: in_pid
  doc: BOOL        Optional  Add pid to output file names.                           False
  type: boolean
  inputBinding:
    prefix: --pid
- id: in_int_optional_deprecated
  doc: "INT         Optional  DEPRECATED in favour of '-threads'. Number of      \
    \     numCores\nprocessing threads to use.\nAutomatically redirects to '-threads'"
  type: boolean
  inputBinding:
    prefix: -a
- id: in_threads
  doc: INT         Optional  Number of Processing threads to use                     numCores
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_double_seed_length
  doc: 'DOUBLE      Optional  Indexing: seed length.                                  18'
  type: boolean
  inputBinding:
    prefix: -L
- id: in_double_optional_indexing
  doc: "DOUBLE      Optional  Indexing: the amount of memory (in Mbytes) for building\
    \ 3072\nthe index."
  type: boolean
  inputBinding:
    prefix: -m
- id: in_bool_optional_produce
  doc: BOOL        Optional  Produce verbose output when building the index          True
  type: boolean
  inputBinding:
    prefix: -v
- id: in_interval
  doc: "INT         Optional  Indexing: Positive integer: index every Nth L-mer in\
    \    1\nthe reference database e.g. '-interval 2'."
  type: boolean
  inputBinding:
    prefix: --interval
- id: in_max_pos
  doc: "INT         Optional  Indexing: maximum (integer) number of positions to store\
    \  1000\nfor each unique L-mer. If 0 all positions are stored."
  type: boolean
  inputBinding:
    prefix: --max_pos
- id: in_dbg_put_db
  doc: BOOL        Optional
  type: boolean
  inputBinding:
    prefix: --dbg_put_db
- id: in_cmd
  doc: BOOL        Optional  Launch an interactive session (command prompt)          False
  type: boolean
  inputBinding:
    prefix: --cmd
- id: in_task
  doc: "INT         Optional  Processing Task:                                   \
    \     4\n0 - align. Only perform alignment\n1 - post-processing (log writing)\n\
    2 - generate reports\n3 - align and post-process\n4 - all\n"
  type: boolean
  inputBinding:
    prefix: --task
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_workdir
  doc: "PATH        Optional  Directory for storing Reference index,      USRDIR/sortmerna/run/\n\
    Key-value database, and the output.\nDefault structure:\nWORKDIR/\nidx/\nkvdb/\n\
    out/"
  type: File
  outputBinding:
    glob: $(inputs.in_workdir)
cwlVersion: v1.1
baseCommand:
- sortmerna
