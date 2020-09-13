version 1.0

task Sortmerna {
  input {
    Boolean? ref
    Boolean? reads
    File? workdir
    Boolean? kv_db
    Boolean? idx
    Boolean? fast_x
    Boolean? sam
    Boolean? sq
    Boolean? blast
    Boolean? aligned
    Boolean? other
    Boolean? num_alignments
    Boolean? best
    Boolean? min_lis
    Boolean? print_all_reads
    Boolean? paired
    Boolean? paired_in
    Boolean? paired_out
    Boolean? out_two
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
    Boolean? double_seed_length
    Boolean? double_optional_indexing
    Boolean? bool_optional_produce
    Boolean? interval
    Boolean? max_pos
    Boolean? dbg_put_db
    Boolean? cmd
    Boolean? int_optional_task
  }
  command <<<
    sortmerna \
      ~{if (ref) then "--ref" else ""} \
      ~{if (reads) then "--reads" else ""} \
      ~{if (workdir) then "--workdir" else ""} \
      ~{if (kv_db) then "--kvdb" else ""} \
      ~{if (idx) then "--idx" else ""} \
      ~{if (fast_x) then "--fastx" else ""} \
      ~{if (sam) then "--sam" else ""} \
      ~{if (sq) then "--SQ" else ""} \
      ~{if (blast) then "--blast" else ""} \
      ~{if (aligned) then "--aligned" else ""} \
      ~{if (other) then "--other" else ""} \
      ~{if (num_alignments) then "--num_alignments" else ""} \
      ~{if (best) then "--best" else ""} \
      ~{if (min_lis) then "--min_lis" else ""} \
      ~{if defined(print_all_reads) then ("--print_all_reads " +  '"' + print_all_reads + '"') else ""} \
      ~{if (paired) then "--paired" else ""} \
      ~{if (paired_in) then "--paired_in" else ""} \
      ~{if (paired_out) then "--paired_out" else ""} \
      ~{if (out_two) then "--out2" else ""} \
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
      ~{if (double_seed_length) then "-L" else ""} \
      ~{if (double_optional_indexing) then "-m" else ""} \
      ~{if (bool_optional_produce) then "-v" else ""} \
      ~{if (interval) then "--interval" else ""} \
      ~{if (max_pos) then "--max_pos" else ""} \
      ~{if (dbg_put_db) then "--dbg_put_db" else ""} \
      ~{if (cmd) then "--cmd" else ""} \
      ~{if (int_optional_task) then "--task" else ""}
  >>>
  parameter_meta {
    ref: "PATH        Required  Reference file (FASTA) absolute or relative path.\\nUse mutliple times, once per a reference file"
    reads: "PATH        Required  Raw reads file (FASTA/FASTQ/FASTA.GZ/FASTQ.GZ).\\nUse twice for files with paired reads"
    workdir: "PATH        Optional  Directory for storing Reference index,      USRDIR/sortmerna/run/\\nKey-value database, and the output.\\nDefault structure:\\nWORKDIR/\\nidx/\\nkvdb/\\nout/"
    kv_db: "PATH        Optional  Directory for storing Key-value database    WORKDIR/kvdb\\nKVDB is used for storing alignement results."
    idx: "PATH        Optional  Directory for storing Reference index.      WORKDIR/idx"
    fast_x: "BOOL        Optional  Output aligned reads into FASTA/FASTQ file"
    sam: "BOOL        Optional  Output SAM alignment for aligned reads."
    sq: "BOOL        Optional  Add SQ tags to the SAM file"
    blast: "STRING      Optional  output alignments in various Blast-like formats\\n'0'                    - pairwise\\n'1'                    - tabular(Blast - m 8 format)\\n'1 cigar'              - tabular + column for CIGAR\\n'1 cigar qcov'         - tabular + columns for CIGAR\\nand query coverage\\n'1 cigar qcov qstrand' - tabular + columns for CIGAR,\\nquery coverage and strand"
    aligned: "STRING/BOOL Optional  Aligned reads file prefix [dir/][pfx]       WORKDIR/out/aligned\\nDirectory and file prefix for aligned output i.e.\\neach output file will go into the specified directory with the given prefix.\\nThe appropriate extension (fasta|fastq|blast|sam|etc) will be automatically added.\\nBoth 'dir' and 'pfx' are optional.\\nThe 'dir' can be a relative or an absolute path.\\nIf 'dir' is not specified, the output will be created in the WORKDIR/out/\\nIf 'pfx' is not specified, the prefix 'aligned' will be used\\nExamples:\\n-aligned $MYDIR/dir_1/dir_2/1 -> $MYDIR/dir_1/dir_2/1.fasta\\n-aligned dir_1/apfx           -> $PWD/dir_1/apfx.fasta\\n-aligned dir_1/               -> $PWD/aligned.fasta\\n-aligned apfx                 -> $PWD/apfx.fasta\\n-aligned  (no argument)       -> WORKDIR/out/aligned.fasta"
    other: "STRING/BOOL Optional  Non-aligned reads file prefix [dir/][pfx]   WORKDIR/out/other\\nMust be used with 'fastx'.\\nDirectory and file prefix for non-aligned output i.e.\\neach output file will go into the specified directory with the given prefix.\\nThe appropriate extension (fasta|fastq|blast|sam|etc) will be automatically added.\\nBoth 'dir' and 'pfx' are optional.\\nThe 'dir' can be a relative or an absolute path.\\nIf 'dir' is not specified, the output will be created in the WORKDIR/out/\\nIf 'pfx' is not specified, the prefix 'other' will be used\\nExamples:\\n-other $MYDIR/dir_1/dir_2/1 -> $MYDIR/dir_1/dir_2/1.fasta\\n-other dir_1/apfx           -> $PWD/dir_1/apfx.fasta\\n-other dir_1/               -> $PWD/dir_1/other.fasta\\n-other apfx                 -> $PWD/apfx.fasta\\n-other  (no argument)       -> aligned_out/other.fasta\\ni.e. the same output directory as used\\nfor aligned output"
    num_alignments: "INT         Optional  Positive integer (INT >=0).\\nReport first INT alignments per read reaching E-value\\nIf INT = 0, all alignments will be output"
    best: "INT         Optional  Report INT best alignments per read reaching E-value    1\\nby searching --min_lis INT candidate alignments\\nIf INT == 0: search All candidate alignments\\nIf INT > 0: search INT best alignments.\\nThe larger is the INT, the longer is the search time.\\nExplanation:\\nA read can potentially be aligned (reaching E-value threshold)\\nto multiple reference sequences.\\nThe 'best' alignment is an alignment that is better\\nthan the previously found alignments.\\nThe very first found alignment is automatically the best alignment\\nuntil a better one is found."
    min_lis: "INT         Optional  Search all alignments having the first INT longest LIS\\nLIS stands for Longest Increasing Subsequence,\\nit is computed using seeds' positions to expand hits into\\nlonger matches prior to Smith - Waterman alignment.\\nRequires option 'best'.\\nMutually exclusive with option 'num_alignments'"
    print_all_reads: "Optional  Output null alignment strings for non-aligned reads     False\\nto SAM and/or BLAST tabular files"
    paired: "BOOL        Optional  Indicates a Single reads file with paired reads         False\\nIf a single reads file with paired reads is used,\\nand neither 'paired_in' nor 'paired_out' are specified,\\nuse this option together with 'out2' to output\\nFWD and REV reads into separate files"
    paired_in: "BOOL        Optional  If one of the paired-end reads is Aligned,              False\\nput both reads into Aligned FASTA/Q file\\nMust be used with 'fastx'.\\nMutually exclusive with 'paired_out'."
    paired_out: "BOOL        Optional  If one of the paired-end reads is Non-aligned,          False\\nput both reads into Non-Aligned FASTA/Q file\\nMust be used with 'fastx'.\\nMutually exclusive with 'paired_in'."
    out_two: "BOOL        Optional  Output paired reads into separate files.                False\\nMust be used with 'fastx'.\\nIgnored without either of 'paired_in' |\\n'paired_out' | 'paired' | two 'reads'"
    match: "INT         Optional  SW score (positive integer) for a match.                2"
    mismatch: "INT         Optional  SW penalty (negative integer) for a mismatch.          -3"
    gap_open: "INT         Optional  SW penalty (positive integer) for introducing a gap.    5"
    gap_ext: "INT         Optional  SW penalty (positive integer) for extending a gap.      2"
    double_optional_evalue: "DOUBLE      Optional  E-value threshold.                                      1\\nDefines the 'statistical significance' of a local alignment.\\nExponentially correllates with the Minimal Alignment Score.\\nHigher E-values (100, 1000, ...) cause More reads\\nto Pass the alignment threshold"
    bool_optional_forward: "BOOL        Optional  Search only the forward strand.                         False"
    bool_optional_sw: "BOOL        Optional  SW penalty for ambiguous letters (N's) scored\\nas --mismatch"
    bool_optional_reversecomplementary: "BOOL        Optional  Search only the reverse-complementary strand.           False"
    id: "INT         Optional  %%id similarity threshold (the alignment                0.97\\nmust still pass the E-value threshold)."
    coverage: "INT         Optional  %%query coverage threshold (the alignment must          0.97\\nstill pass the E-value threshold)"
    de_novo_otu: "BOOL        Optional  FASTA/FASTQ file for reads matching database < %%id     False\\n(set using --id) and < %%cov (set using --coverage)\\n(alignment must still pass the E-value threshold)."
    otu_map: "BOOL        Optional  Output OTU map (input to QIIME's make_otu_table.py).    False"
    passes: "INT,INT,INT Optional  Three intervals at which to place the seed on the read  L,L/2,3\\n(L is the seed length)"
    edges: "INT         Optional  Number (or percent if INT followed by %% sign) of       4\\nnucleotides to add to each edge of the read\\nprior to SW local alignment"
    num_seeds: "BOOL        Optional  Number of seeds matched before searching                2\\nfor candidate LIS"
    full_search: "INT         Optional  Search for all 0-error and 1-error seed                 False\\nmatches in the index rather than stopping\\nafter finding a 0-error match (<1%% gain in\\nsensitivity with up four-fold decrease in speed)"
    pid: "BOOL        Optional  Add pid to output file names.                           False"
    int_optional_deprecated: "INT         Optional  DEPRECATED in favour of '-threads'. Number of           numCores\\nprocessing threads to use.\\nAutomatically redirects to '-threads'"
    threads: "INT         Optional  Number of Processing threads to use                     numCores"
    double_seed_length: "DOUBLE      Optional  Indexing: seed length.                                  18"
    double_optional_indexing: "DOUBLE      Optional  Indexing: the amount of memory (in Mbytes) for building 3072\\nthe index."
    bool_optional_produce: "BOOL        Optional  Produce verbose output when building the index          True"
    interval: "INT         Optional  Indexing: Positive integer: index every Nth L-mer in    1\\nthe reference database e.g. '-interval 2'."
    max_pos: "INT         Optional  Indexing: maximum (integer) number of positions to store  1000\\nfor each unique L-mer. If 0 all positions are stored."
    dbg_put_db: "BOOL        Optional"
    cmd: "BOOL        Optional  Launch an interactive session (command prompt)          False"
    int_optional_task: "INT         Optional  Processing Task:                                        4\\n0 - align. Only perform alignment\\n1 - post-processing (log writing)\\n2 - generate reports\\n3 - align and post-process\\n4 - all\\n"
  }
  output {
    File out_stdout = stdout()
    File out_workdir = "${in_workdir}"
  }
}