version 1.0

task Sortmerna {
  input {
    Boolean? ref
    Boolean? reads
    File? workdir
    Boolean? kv_db
    Boolean? idx_dir
    Boolean? read_b
    Boolean? fast_x
    Boolean? sam
    Boolean? sq
    Boolean? blast
    Boolean? aligned
    Boolean? other
    Boolean? num_alignments
    Boolean? no_best
    Boolean? min_lis
    Boolean? print_all_reads
    Boolean? paired
    Boolean? paired_in
    Boolean? paired_out
    Boolean? out_two
    Boolean? s_out
    Boolean? zip_out
    Boolean? match
    Boolean? mismatch
    Boolean? gap_open
    Boolean? gap_ext
    Boolean? double_optional_evalue
    Boolean? bool_optional_forward
    Boolean? bool_optional_sw
    Boolean? bool_optional_reversecomplementary
    Boolean? id
    Boolean? coverage
    Boolean? de_novo_otu
    Boolean? otu_map
    Boolean? passes
    Boolean? edges
    Boolean? num_seeds
    Boolean? full_search
    Boolean? pid
    Boolean? int_optional_deprecated
    Boolean? threads
    Boolean? index
    Boolean? double_optional_indexing_seed
    Boolean? double_optional_indexing_amount
    Boolean? bool_optional_produce
    Boolean? interval
    Boolean? max_pos
    Boolean? dbg_put_db
    Boolean? cmd
    Boolean? int_optional_processing
    Boolean? dbg_level
  }
  command <<<
    sortmerna \
      ~{if (ref) then "--ref" else ""} \
      ~{if (reads) then "--reads" else ""} \
      ~{if (workdir) then "--workdir" else ""} \
      ~{if (kv_db) then "--kvdb" else ""} \
      ~{if (idx_dir) then "--idx-dir" else ""} \
      ~{if (read_b) then "--readb" else ""} \
      ~{if (fast_x) then "--fastx" else ""} \
      ~{if (sam) then "--sam" else ""} \
      ~{if (sq) then "--SQ" else ""} \
      ~{if (blast) then "--blast" else ""} \
      ~{if (aligned) then "--aligned" else ""} \
      ~{if (other) then "--other" else ""} \
      ~{if (num_alignments) then "--num_alignments" else ""} \
      ~{if (no_best) then "--no-best" else ""} \
      ~{if (min_lis) then "--min_lis" else ""} \
      ~{if defined(print_all_reads) then ("--print_all_reads " +  '"' + print_all_reads + '"') else ""} \
      ~{if (paired) then "--paired" else ""} \
      ~{if (paired_in) then "--paired_in" else ""} \
      ~{if (paired_out) then "--paired_out" else ""} \
      ~{if (out_two) then "--out2" else ""} \
      ~{if (s_out) then "--sout" else ""} \
      ~{if (zip_out) then "--zip-out" else ""} \
      ~{if (match) then "--match" else ""} \
      ~{if (mismatch) then "--mismatch" else ""} \
      ~{if (gap_open) then "--gap_open" else ""} \
      ~{if (gap_ext) then "--gap_ext" else ""} \
      ~{if (double_optional_evalue) then "-e" else ""} \
      ~{if (bool_optional_forward) then "-F" else ""} \
      ~{if (bool_optional_sw) then "-N" else ""} \
      ~{if (bool_optional_reversecomplementary) then "-R" else ""} \
      ~{if (id) then "--id" else ""} \
      ~{if (coverage) then "--coverage" else ""} \
      ~{if (de_novo_otu) then "--de_novo_otu" else ""} \
      ~{if (otu_map) then "--otu_map" else ""} \
      ~{if (passes) then "--passes" else ""} \
      ~{if (edges) then "--edges" else ""} \
      ~{if (num_seeds) then "--num_seeds" else ""} \
      ~{if (full_search) then "--full_search" else ""} \
      ~{if (pid) then "--pid" else ""} \
      ~{if (int_optional_deprecated) then "-a" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (index) then "--index" else ""} \
      ~{if (double_optional_indexing_seed) then "-L" else ""} \
      ~{if (double_optional_indexing_amount) then "-m" else ""} \
      ~{if (bool_optional_produce) then "-v" else ""} \
      ~{if (interval) then "--interval" else ""} \
      ~{if (max_pos) then "--max_pos" else ""} \
      ~{if (dbg_put_db) then "--dbg_put_db" else ""} \
      ~{if (cmd) then "--cmd" else ""} \
      ~{if (int_optional_processing) then "--task" else ""} \
      ~{if (dbg_level) then "--dbg-level" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sortmerna:4.3.2--h9ee0642_1"
  }
  parameter_meta {
    ref: "PATH        Required  Reference file (FASTA) absolute or relative path.\\nUse mutliple times, once per a reference file"
    reads: "PATH        Required  Raw reads file (FASTA/FASTQ/FASTA.GZ/FASTQ.GZ).\\nUse twice for files with paired reads.\\nThe file extensions are Not important. The program automatically\\nrecognizes the file format as flat/compressed, fasta/fastq"
    workdir: "PATH        Optional  Workspace directory                         USRDIR/sortmerna/run/\\nDefault structure: WORKDIR/\\nidx/   (References index)\\nkvdb/  (Key-value storage for alignments)\\nout/   (processing output)\\nreadb/ (pre-processed reads/index)"
    kv_db: "PATH        Optional  Directory for Key-value database            WORKDIR/kvdb\\nKVDB is used for storing the alignment results."
    idx_dir: "PATH        Optional  Directory for storing Reference index.      WORKDIR/idx"
    read_b: "PATH        Optional  Storage for pre-processed reads             WORKDIR/readb/\\nDirectory storing the split reads, or the random access index of compressed reads"
    fast_x: "BOOL        Optional  Output aligned reads into FASTA/FASTQ file"
    sam: "BOOL        Optional  Output SAM alignment for aligned reads."
    sq: "BOOL        Optional  Add SQ tags to the SAM file"
    blast: "STR         Optional  output alignments in various Blast-like formats\\nSample values: '0'                    - pairwise\\n'1'                    - tabular (Blast - m 8 format)\\n'1 cigar'              - tabular + column for CIGAR\\n'1 cigar qcov'         - tabular + columns for CIGAR and query coverage\\n'1 cigar qcov qstrand' - tabular + columns for CIGAR, query coverage,\\nand strand"
    aligned: "STR/BOOL    Optional  Aligned reads file prefix [dir/][pfx]       WORKDIR/out/aligned\\nDirectory and file prefix for aligned output i.e. each\\noutput file goes into the specified directory with the given prefix.\\nThe appropriate extension: (fasta|fastq|blast|sam|etc) is automatically added.\\nBoth 'dir' and 'pfx' are optional.\\nThe 'dir' can be a relative or an absolute path.\\nIf 'dir' is not specified, the output is created in the WORKDIR/out/\\nIf 'pfx' is not specified, the prefix 'aligned' is used\\nExamples:\\n'-aligned $MYDIR/dir_1/dir_2/1' -> $MYDIR/dir_1/dir_2/1.fasta\\n'-aligned dir_1/apfx'           -> $PWD/dir_1/apfx.fasta\\n'-aligned dir_1/'               -> $PWD/aligned.fasta\\n'-aligned apfx'                 -> $PWD/apfx.fasta\\n'-aligned  (no argument)'       -> WORKDIR/out/aligned.fasta"
    other: "STR/BOOL    Optional  Non-aligned reads file prefix [dir/][pfx]   WORKDIR/out/other\\nDirectory and file prefix for non-aligned output i.e. each\\noutput file goes into the specified directory with the given prefix.\\nThe appropriate extension: (fasta|fastq|blast|sam|etc) is automatically added.\\nMust be used with 'fastx'.\\nBoth 'dir' and 'pfx' are optional.\\nThe 'dir' can be a relative or an absolute path.\\nIf 'dir' is not specified, the output is created in the WORKDIR/out/\\nIf 'pfx' is not specified, the prefix 'other' is used\\nExamples:\\n'-other $MYDIR/dir_1/dir_2/1' -> $MYDIR/dir_1/dir_2/1.fasta\\n'-other dir_1/apfx'           -> $PWD/dir_1/apfx.fasta\\n'-other dir_1/'               -> $PWD/dir_1/other.fasta\\n'-other apfx'                 -> $PWD/apfx.fasta\\n'-other  (no argument)'       -> aligned_out/other.fasta\\ni.e. the same output directory\\nas used for aligned output"
    num_alignments: "INT         Optional  Positive integer (INT >=0).\\nIf used with '-no-best' reports first INT alignments per read reaching\\nE-value threshold, which allows to lower the CPU time and memory use.\\nOtherwise outputs INT best alignments.\\nIf INT = 0, all alignments are output"
    no_best: "BOOL        Optional  Disable best alignments search                          1\\nBy default the exchaustive alignments search is performed by searching '-min_lis N'\\ncandidate alignments\\nIf N == 0: All candidate alignments are searched\\nIf N > 0:  N best alignments are searched.\\nNaturally the larger is the N, the longer is the search time.\\nExplanation:\\nA read can potentially be aligned (reaching E-value threshold) to multiple reference sequences.\\nThe 'best' alignment is the highest scoring alignment out of All alignments of a Read.\\nTo find the Best alignment - an exhaustive search over All references has to be performed.\\n'best 1' and 'best 0' (all the bests) are Equally intensive processes requiring\\nthe exhaustive search, although the size of reports will differ."
    min_lis: "INT         Optional  Search all alignments having the first INT              2\\nlongest LIS\\nLIS stands for Longest Increasing Subsequence, it is computed using seeds'\\npositions to expand hits into longer matches prior to Smith - Waterman alignment."
    print_all_reads: "Optional  Output null alignment strings for non-aligned reads     False\\nto SAM and/or BLAST tabular files"
    paired: "BOOL        Optional  Flags paired reads                                      False\\nIf a single reads file is provided, use this option to indicate\\nthe file contains interleaved paired reads when neither\\n'paired_in' | 'paired_out' | 'out2' | 'sout' are specified."
    paired_in: "BOOL        Optional  Flags the paired-end reads as Aligned,                  False\\nwhen either of them is Aligned.\\nWith this option both reads are output into Aligned FASTA/Q file\\nMust be used with 'fastx'.\\nMutually exclusive with 'paired_out'."
    paired_out: "BOOL        Optional  Flags the paired-end reads as Non-aligned,              False\\nwhen either of them is non-aligned.\\nWith this option both reads are output into Non-Aligned FASTA/Q file\\nMust be used with 'fastx'.\\nMutually exclusive with 'paired_in'."
    out_two: "BOOL        Optional  Output paired reads into separate files.                False\\nMust be used with 'fastx'.\\nIf a single reads file is provided, this options implies interleaved paired reads\\nWhen used with 'sout', four (4) output files for aligned reads will be generated:\\n'aligned-paired-fwd, aligned-paired-rev, aligned-singleton-fwd, aligned-singleton-rev'.\\nIf 'other' option is also used, eight (8) output files will be generated."
    s_out: "BOOL        Optional  Separate paired and singleton aligned reads.            False\\nTo be used with 'fastx'.\\nIf a single reads file is provided, this options implies interleaved paired reads\\nCannot be used with 'paired_in' | 'paired_out'"
    zip_out: "STR/BOOL    Optional  Controls the output compression                         Yes/True\\nBy default the report files are produced in the same format as the input i.e.\\nif the reads files are compressed (gz), the output is also compressed.\\nThe default behaviour can be overriden by using '-zip-out'.\\nThe possible values: Y(es), N(o), T(rue), F(alse). No value means 'True'.\\nThe values are Not case sensitive i.e. 'Yes, YES, yEs, Y, y' are all OK\\nExamples:\\n'-reads freads.gz -zip-out n' : generate flat output when the input is compressed\\n'-reads freads.flat -zip-out' : compress the output when the input files are flat"
    match: "INT         Optional  SW score (positive integer) for a match.                2"
    mismatch: "INT         Optional  SW penalty (negative integer) for a mismatch.          -3"
    gap_open: "INT         Optional  SW penalty (positive integer) for introducing a gap.    5"
    gap_ext: "INT         Optional  SW penalty (positive integer) for extending a gap.      2"
    double_optional_evalue: "DOUBLE      Optional  E-value threshold.                                      1\\nDefines the 'statistical significance' of a local alignment.\\nExponentially correllates with the Minimal Alignment score.\\nHigher E-values (100, 1000, ...) cause More reads to Pass the alignment threshold"
    bool_optional_forward: "BOOL        Optional  Search only the forward strand.                         False"
    bool_optional_sw: "BOOL        Optional  SW penalty for ambiguous letters (N's) scored\\nas --mismatch"
    bool_optional_reversecomplementary: "BOOL        Optional  Search only the reverse-complementary strand.           False"
    id: "INT         Optional  %%id similarity threshold (the alignment                0.97\\nmust still pass the E-value threshold)."
    coverage: "INT         Optional  %%query coverage threshold (the alignment must          0.97\\nstill pass the E-value threshold)"
    de_novo_otu: "BOOL        Optional  Output FASTA file with 'de novo' reads                  False\\nRead is 'de novo' if its alignment score passes E-value threshold, but both the identity\\n'-id', and the '-coverage' are below their corresponding thresholds\\ni.e. ID < %%id and COV < %%cov"
    otu_map: "BOOL        Optional  Output OTU map (input to QIIME's make_otu_table.py).    False\\nCannot be used with 'no-best because\\nthe grouping is done around the best alignment'"
    passes: "INT,INT,INT Optional  Three intervals at which to place the seed on           L,L/2,3\\nthe read (L is the seed length)"
    edges: "INT         Optional  Number (or percent if INT followed by %% sign) of       4\\nnucleotides to add to each edge of the read\\nprior to SW local alignment"
    num_seeds: "BOOL        Optional  Number of seeds matched before searching                2\\nfor candidate LIS"
    full_search: "INT         Optional  Search for all 0-error and 1-error seed                 False\\nmatches in the index rather than stopping\\nafter finding a 0-error match (<1%% gain in\\nsensitivity with up four-fold decrease in speed)"
    pid: "BOOL        Optional  Add pid to output file names.                           False"
    int_optional_deprecated: "INT         Optional  DEPRECATED in favour of '-threads'. Number of           numCores\\nprocessing threads to use.\\nAutomatically redirects to '-threads'"
    threads: "INT         Optional  Number of Processing threads to use                     2"
    index: "INT         Optional  Build reference database index                          2\\nBy default when this option is not used, the program checks the reference index and\\nbuilds it if not already existing.\\nThis can be changed by using '-index' as follows:\\n'-index 0' - skip indexing. If the index does not exist, the program will terminate\\nand warn to build the index prior performing the alignment\\n'-index 1' - only perform the indexing and terminate\\n'-index 2' - the default behaviour, the same as when not using this option at all"
    double_optional_indexing_seed: "DOUBLE      Optional  Indexing: seed length.                                  18"
    double_optional_indexing_amount: "DOUBLE      Optional  Indexing: the amount of memory (in Mbytes) for          3072\\nbuilding the index."
    bool_optional_produce: "BOOL        Optional  Produce verbose output when building the index          True"
    interval: "INT         Optional  Indexing: Positive integer: index every Nth L-mer in    1\\nthe reference database e.g. '-interval 2'."
    max_pos: "INT         Optional  Indexing: maximum (integer) number of positions to      1000\\nstore for each unique L-mer.\\nIf 0 - all positions are stored."
    dbg_put_db: "BOOL        Optional"
    cmd: "BOOL        Optional  Launch an interactive session (command prompt)          False"
    int_optional_processing: "INT         Optional  Processing Task                                         4\\nPossible values: 0 - align. Only perform alignment\\n1 - post-processing (log writing)\\n2 - generate reports\\n3 - align and post-process\\n4 - all"
    dbg_level: "INT         Optional  Debug level                                             0\\nControls verbosity of the execution trace. Default value of 0 corresponds to\\nthe least verbose output.\\nThe highest value currently is 2.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_workdir = "${in_workdir}"
  }
}