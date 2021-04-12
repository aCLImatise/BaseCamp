class: CommandLineTool
id: sortmerna.cwl
inputs:
- id: in_ref
  doc: "PATH        Required  Reference file (FASTA) absolute or relative path.\n\
    Use mutliple times, once per a reference file"
  type: boolean?
  inputBinding:
    prefix: --ref
- id: in_reads
  doc: "PATH        Required  Raw reads file (FASTA/FASTQ/FASTA.GZ/FASTQ.GZ).\nUse\
    \ twice for files with paired reads.\nThe file extensions are Not important. The\
    \ program automatically\nrecognizes the file format as flat/compressed, fasta/fastq"
  type: boolean?
  inputBinding:
    prefix: --reads
- id: in_workdir
  doc: "PATH        Optional  Workspace directory                         USRDIR/sortmerna/run/\n\
    Default structure: WORKDIR/\nidx/   (References index)\nkvdb/  (Key-value storage\
    \ for alignments)\nout/   (processing output)\nreadb/ (pre-processed reads/index)"
  type: File?
  inputBinding:
    prefix: --workdir
- id: in_kv_db
  doc: "PATH        Optional  Directory for Key-value database            WORKDIR/kvdb\n\
    KVDB is used for storing the alignment results."
  type: boolean?
  inputBinding:
    prefix: --kvdb
- id: in_idx_dir
  doc: PATH        Optional  Directory for storing Reference index.      WORKDIR/idx
  type: boolean?
  inputBinding:
    prefix: --idx-dir
- id: in_read_b
  doc: "PATH        Optional  Storage for pre-processed reads             WORKDIR/readb/\n\
    Directory storing the split reads, or the random access index of compressed reads"
  type: boolean?
  inputBinding:
    prefix: --readb
- id: in_fast_x
  doc: BOOL        Optional  Output aligned reads into FASTA/FASTQ file
  type: boolean?
  inputBinding:
    prefix: --fastx
- id: in_sam
  doc: BOOL        Optional  Output SAM alignment for aligned reads.
  type: boolean?
  inputBinding:
    prefix: --sam
- id: in_sq
  doc: BOOL        Optional  Add SQ tags to the SAM file
  type: boolean?
  inputBinding:
    prefix: --SQ
- id: in_blast
  doc: "STR         Optional  output alignments in various Blast-like formats\nSample\
    \ values: '0'                    - pairwise\n'1'                    - tabular\
    \ (Blast - m 8 format)\n'1 cigar'              - tabular + column for CIGAR\n\
    '1 cigar qcov'         - tabular + columns for CIGAR and query coverage\n'1 cigar\
    \ qcov qstrand' - tabular + columns for CIGAR, query coverage,\nand strand"
  type: boolean?
  inputBinding:
    prefix: --blast
- id: in_aligned
  doc: "STR/BOOL    Optional  Aligned reads file prefix [dir/][pfx]       WORKDIR/out/aligned\n\
    Directory and file prefix for aligned output i.e. each\noutput file goes into\
    \ the specified directory with the given prefix.\nThe appropriate extension: (fasta|fastq|blast|sam|etc)\
    \ is automatically added.\nBoth 'dir' and 'pfx' are optional.\nThe 'dir' can be\
    \ a relative or an absolute path.\nIf 'dir' is not specified, the output is created\
    \ in the WORKDIR/out/\nIf 'pfx' is not specified, the prefix 'aligned' is used\n\
    Examples:\n'-aligned $MYDIR/dir_1/dir_2/1' -> $MYDIR/dir_1/dir_2/1.fasta\n'-aligned\
    \ dir_1/apfx'           -> $PWD/dir_1/apfx.fasta\n'-aligned dir_1/'          \
    \     -> $PWD/aligned.fasta\n'-aligned apfx'                 -> $PWD/apfx.fasta\n\
    '-aligned  (no argument)'       -> WORKDIR/out/aligned.fasta"
  type: boolean?
  inputBinding:
    prefix: --aligned
- id: in_other
  doc: "STR/BOOL    Optional  Non-aligned reads file prefix [dir/][pfx]   WORKDIR/out/other\n\
    Directory and file prefix for non-aligned output i.e. each\noutput file goes into\
    \ the specified directory with the given prefix.\nThe appropriate extension: (fasta|fastq|blast|sam|etc)\
    \ is automatically added.\nMust be used with 'fastx'.\nBoth 'dir' and 'pfx' are\
    \ optional.\nThe 'dir' can be a relative or an absolute path.\nIf 'dir' is not\
    \ specified, the output is created in the WORKDIR/out/\nIf 'pfx' is not specified,\
    \ the prefix 'other' is used\nExamples:\n'-other $MYDIR/dir_1/dir_2/1' -> $MYDIR/dir_1/dir_2/1.fasta\n\
    '-other dir_1/apfx'           -> $PWD/dir_1/apfx.fasta\n'-other dir_1/'      \
    \         -> $PWD/dir_1/other.fasta\n'-other apfx'                 -> $PWD/apfx.fasta\n\
    '-other  (no argument)'       -> aligned_out/other.fasta\ni.e. the same output\
    \ directory\nas used for aligned output"
  type: boolean?
  inputBinding:
    prefix: --other
- id: in_num_alignments
  doc: "INT         Optional  Positive integer (INT >=0).\nIf used with '-no-best'\
    \ reports first INT alignments per read reaching\nE-value threshold, which allows\
    \ to lower the CPU time and memory use.\nOtherwise outputs INT best alignments.\n\
    If INT = 0, all alignments are output"
  type: boolean?
  inputBinding:
    prefix: --num_alignments
- id: in_no_best
  doc: "BOOL        Optional  Disable best alignments search                     \
    \     1\nBy default the exchaustive alignments search is performed by searching\
    \ '-min_lis N'\ncandidate alignments\nIf N == 0: All candidate alignments are\
    \ searched\nIf N > 0:  N best alignments are searched.\nNaturally the larger is\
    \ the N, the longer is the search time.\nExplanation:\nA read can potentially\
    \ be aligned (reaching E-value threshold) to multiple reference sequences.\nThe\
    \ 'best' alignment is the highest scoring alignment out of All alignments of a\
    \ Read.\nTo find the Best alignment - an exhaustive search over All references\
    \ has to be performed.\n'best 1' and 'best 0' (all the bests) are Equally intensive\
    \ processes requiring\nthe exhaustive search, although the size of reports will\
    \ differ."
  type: boolean?
  inputBinding:
    prefix: --no-best
- id: in_min_lis
  doc: "INT         Optional  Search all alignments having the first INT         \
    \     2\nlongest LIS\nLIS stands for Longest Increasing Subsequence, it is computed\
    \ using seeds'\npositions to expand hits into longer matches prior to Smith -\
    \ Waterman alignment."
  type: boolean?
  inputBinding:
    prefix: --min_lis
- id: in_print_all_reads
  doc: "Optional  Output null alignment strings for non-aligned reads     False\n\
    to SAM and/or BLAST tabular files"
  type: boolean?
  inputBinding:
    prefix: --print_all_reads
- id: in_paired
  doc: "BOOL        Optional  Flags paired reads                                 \
    \     False\nIf a single reads file is provided, use this option to indicate\n\
    the file contains interleaved paired reads when neither\n'paired_in' | 'paired_out'\
    \ | 'out2' | 'sout' are specified."
  type: boolean?
  inputBinding:
    prefix: --paired
- id: in_paired_in
  doc: "BOOL        Optional  Flags the paired-end reads as Aligned,             \
    \     False\nwhen either of them is Aligned.\nWith this option both reads are\
    \ output into Aligned FASTA/Q file\nMust be used with 'fastx'.\nMutually exclusive\
    \ with 'paired_out'."
  type: boolean?
  inputBinding:
    prefix: --paired_in
- id: in_paired_out
  doc: "BOOL        Optional  Flags the paired-end reads as Non-aligned,         \
    \     False\nwhen either of them is non-aligned.\nWith this option both reads\
    \ are output into Non-Aligned FASTA/Q file\nMust be used with 'fastx'.\nMutually\
    \ exclusive with 'paired_in'."
  type: boolean?
  inputBinding:
    prefix: --paired_out
- id: in_out_two
  doc: "BOOL        Optional  Output paired reads into separate files.           \
    \     False\nMust be used with 'fastx'.\nIf a single reads file is provided, this\
    \ options implies interleaved paired reads\nWhen used with 'sout', four (4) output\
    \ files for aligned reads will be generated:\n'aligned-paired-fwd, aligned-paired-rev,\
    \ aligned-singleton-fwd, aligned-singleton-rev'.\nIf 'other' option is also used,\
    \ eight (8) output files will be generated."
  type: boolean?
  inputBinding:
    prefix: --out2
- id: in_s_out
  doc: "BOOL        Optional  Separate paired and singleton aligned reads.       \
    \     False\nTo be used with 'fastx'.\nIf a single reads file is provided, this\
    \ options implies interleaved paired reads\nCannot be used with 'paired_in' |\
    \ 'paired_out'"
  type: boolean?
  inputBinding:
    prefix: --sout
- id: in_zip_out
  doc: "STR/BOOL    Optional  Controls the output compression                    \
    \     Yes/True\nBy default the report files are produced in the same format as\
    \ the input i.e.\nif the reads files are compressed (gz), the output is also compressed.\n\
    The default behaviour can be overriden by using '-zip-out'.\nThe possible values:\
    \ Y(es), N(o), T(rue), F(alse). No value means 'True'.\nThe values are Not case\
    \ sensitive i.e. 'Yes, YES, yEs, Y, y' are all OK\nExamples:\n'-reads freads.gz\
    \ -zip-out n' : generate flat output when the input is compressed\n'-reads freads.flat\
    \ -zip-out' : compress the output when the input files are flat"
  type: boolean?
  inputBinding:
    prefix: --zip-out
- id: in_match
  doc: INT         Optional  SW score (positive integer) for a match.                2
  type: boolean?
  inputBinding:
    prefix: --match
- id: in_mismatch
  doc: INT         Optional  SW penalty (negative integer) for a mismatch.          -3
  type: boolean?
  inputBinding:
    prefix: --mismatch
- id: in_gap_open
  doc: INT         Optional  SW penalty (positive integer) for introducing a gap.    5
  type: boolean?
  inputBinding:
    prefix: --gap_open
- id: in_gap_ext
  doc: INT         Optional  SW penalty (positive integer) for extending a gap.      2
  type: boolean?
  inputBinding:
    prefix: --gap_ext
- id: in_double_optional_evalue
  doc: "DOUBLE      Optional  E-value threshold.                                 \
    \     1\nDefines the 'statistical significance' of a local alignment.\nExponentially\
    \ correllates with the Minimal Alignment score.\nHigher E-values (100, 1000, ...)\
    \ cause More reads to Pass the alignment threshold"
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_bool_optional_forward
  doc: BOOL        Optional  Search only the forward strand.                         False
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_bool_optional_sw
  doc: "BOOL        Optional  SW penalty for ambiguous letters (N's) scored\nas --mismatch"
  type: boolean?
  inputBinding:
    prefix: -N
- id: in_bool_optional_reversecomplementary
  doc: BOOL        Optional  Search only the reverse-complementary strand.           False
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_id
  doc: "INT         Optional  %%id similarity threshold (the alignment           \
    \     0.97\nmust still pass the E-value threshold)."
  type: boolean?
  inputBinding:
    prefix: --id
- id: in_coverage
  doc: "INT         Optional  %%query coverage threshold (the alignment must     \
    \     0.97\nstill pass the E-value threshold)"
  type: boolean?
  inputBinding:
    prefix: --coverage
- id: in_de_novo_otu
  doc: "BOOL        Optional  Output FASTA file with 'de novo' reads             \
    \     False\nRead is 'de novo' if its alignment score passes E-value threshold,\
    \ but both the identity\n'-id', and the '-coverage' are below their corresponding\
    \ thresholds\ni.e. ID < %%id and COV < %%cov"
  type: boolean?
  inputBinding:
    prefix: --de_novo_otu
- id: in_otu_map
  doc: "BOOL        Optional  Output OTU map (input to QIIME's make_otu_table.py).\
    \    False\nCannot be used with 'no-best because\nthe grouping is done around\
    \ the best alignment'"
  type: boolean?
  inputBinding:
    prefix: --otu_map
- id: in_passes
  doc: "INT,INT,INT Optional  Three intervals at which to place the seed on      \
    \     L,L/2,3\nthe read (L is the seed length)"
  type: boolean?
  inputBinding:
    prefix: --passes
- id: in_edges
  doc: "INT         Optional  Number (or percent if INT followed by %% sign) of  \
    \     4\nnucleotides to add to each edge of the read\nprior to SW local alignment"
  type: boolean?
  inputBinding:
    prefix: --edges
- id: in_num_seeds
  doc: "BOOL        Optional  Number of seeds matched before searching           \
    \     2\nfor candidate LIS"
  type: boolean?
  inputBinding:
    prefix: --num_seeds
- id: in_full_search
  doc: "INT         Optional  Search for all 0-error and 1-error seed            \
    \     False\nmatches in the index rather than stopping\nafter finding a 0-error\
    \ match (<1%% gain in\nsensitivity with up four-fold decrease in speed)"
  type: boolean?
  inputBinding:
    prefix: --full_search
- id: in_pid
  doc: BOOL        Optional  Add pid to output file names.                           False
  type: boolean?
  inputBinding:
    prefix: --pid
- id: in_int_optional_deprecated
  doc: "INT         Optional  DEPRECATED in favour of '-threads'. Number of      \
    \     numCores\nprocessing threads to use.\nAutomatically redirects to '-threads'"
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_threads
  doc: INT         Optional  Number of Processing threads to use                     2
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_index
  doc: "INT         Optional  Build reference database index                     \
    \     2\nBy default when this option is not used, the program checks the reference\
    \ index and\nbuilds it if not already existing.\nThis can be changed by using\
    \ '-index' as follows:\n'-index 0' - skip indexing. If the index does not exist,\
    \ the program will terminate\nand warn to build the index prior performing the\
    \ alignment\n'-index 1' - only perform the indexing and terminate\n'-index 2'\
    \ - the default behaviour, the same as when not using this option at all"
  type: boolean?
  inputBinding:
    prefix: --index
- id: in_double_optional_indexing_seed
  doc: 'DOUBLE      Optional  Indexing: seed length.                                  18'
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_double_optional_indexing_amount
  doc: "DOUBLE      Optional  Indexing: the amount of memory (in Mbytes) for     \
    \     3072\nbuilding the index."
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_bool_optional_produce
  doc: BOOL        Optional  Produce verbose output when building the index          True
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_interval
  doc: "INT         Optional  Indexing: Positive integer: index every Nth L-mer in\
    \    1\nthe reference database e.g. '-interval 2'."
  type: boolean?
  inputBinding:
    prefix: --interval
- id: in_max_pos
  doc: "INT         Optional  Indexing: maximum (integer) number of positions to \
    \     1000\nstore for each unique L-mer.\nIf 0 - all positions are stored."
  type: boolean?
  inputBinding:
    prefix: --max_pos
- id: in_dbg_put_db
  doc: BOOL        Optional
  type: boolean?
  inputBinding:
    prefix: --dbg_put_db
- id: in_cmd
  doc: BOOL        Optional  Launch an interactive session (command prompt)          False
  type: boolean?
  inputBinding:
    prefix: --cmd
- id: in_task
  doc: "INT         Optional  Processing Task                                    \
    \     4\nPossible values: 0 - align. Only perform alignment\n1 - post-processing\
    \ (log writing)\n2 - generate reports\n3 - align and post-process\n4 - all"
  type: boolean?
  inputBinding:
    prefix: --task
- id: in_dbg_level
  doc: "INT         Optional  Debug level                                        \
    \     0\nControls verbosity of the execution trace. Default value of 0 corresponds\
    \ to\nthe least verbose output.\nThe highest value currently is 2.\n"
  type: boolean?
  inputBinding:
    prefix: --dbg-level
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_workdir
  doc: "PATH        Optional  Workspace directory                         USRDIR/sortmerna/run/\n\
    Default structure: WORKDIR/\nidx/   (References index)\nkvdb/  (Key-value storage\
    \ for alignments)\nout/   (processing output)\nreadb/ (pre-processed reads/index)"
  type: File?
  outputBinding:
    glob: $(inputs.in_workdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sortmerna:4.3.2--h9ee0642_1
cwlVersion: v1.1
baseCommand:
- sortmerna
