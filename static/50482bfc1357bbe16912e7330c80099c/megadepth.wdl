version 1.0

task Megadepth {
  input {
    Boolean? threads
    Boolean? prefix
    Boolean? no_auc_stdout
    Boolean? no_annotation_stdout
    Boolean? no_coverage_stdout
    Boolean? keep_order
    String? annotation
    Boolean? op
    Boolean? sums_only
    Boolean? bw_buffer
    Boolean? fast_a
    Boolean? junctions
    Boolean? all_junctions
    Boolean? long_reads
    Boolean? filter_in
    Boolean? filter_out
    Boolean? alts
    Boolean? include_soft_clip
    Boolean? only_polya
    Boolean? include_n
    Boolean? print_qual
    Boolean? delta
    Boolean? require_mdz
    Boolean? print_perbase_coverage
    Boolean? auc
    Boolean? bigwig
    Boolean? no_index
    Int? min_unique_qual
    Boolean? double_count
    Boolean? gzip
    Boolean? read_ends
    Boolean? frag_dist
    Boolean? echo_sam
    Boolean? ends
    Boolean? test_polya
    String expected
    String numbases_report_total
  }
  command <<<
    megadepth \
      ~{expected} \
      ~{numbases_report_total} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (no_auc_stdout) then "--no-auc-stdout" else ""} \
      ~{if (no_annotation_stdout) then "--no-annotation-stdout" else ""} \
      ~{if (no_coverage_stdout) then "--no-coverage-stdout" else ""} \
      ~{if (keep_order) then "--keep-order" else ""} \
      ~{if defined(annotation) then ("--annotation " +  '"' + annotation + '"') else ""} \
      ~{if (op) then "--op" else ""} \
      ~{if (sums_only) then "--sums-only" else ""} \
      ~{if (bw_buffer) then "--bwbuffer" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (junctions) then "--junctions" else ""} \
      ~{if (all_junctions) then "--all-junctions" else ""} \
      ~{if (long_reads) then "--longreads" else ""} \
      ~{if (filter_in) then "--filter-in" else ""} \
      ~{if (filter_out) then "--filter-out" else ""} \
      ~{if (alts) then "--alts" else ""} \
      ~{if (include_soft_clip) then "--include-softclip" else ""} \
      ~{if (only_polya) then "--only-polya" else ""} \
      ~{if (include_n) then "--include-n" else ""} \
      ~{if (print_qual) then "--print-qual" else ""} \
      ~{if (delta) then "--delta" else ""} \
      ~{if (require_mdz) then "--require-mdz" else ""} \
      ~{if (print_perbase_coverage) then "--coverage" else ""} \
      ~{if (auc) then "--auc" else ""} \
      ~{if (bigwig) then "--bigwig" else ""} \
      ~{if (no_index) then "--no-index" else ""} \
      ~{if defined(min_unique_qual) then ("--min-unique-qual " +  '"' + min_unique_qual + '"') else ""} \
      ~{if (double_count) then "--double-count" else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if (read_ends) then "--read-ends" else ""} \
      ~{if (frag_dist) then "--frag-dist" else ""} \
      ~{if (echo_sam) then "--echo-sam" else ""} \
      ~{if (ends) then "--ends" else ""} \
      ~{if (test_polya) then "--test-polya" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/megadepth:1.1.0--h5675ecd_0"
  }
  parameter_meta {
    threads: "# of threads to do: BAM decompression OR compute sums over multiple BigWigs in parallel\\nif the 2nd is intended then a TXT file listing the paths to the BigWigs to process in parallel\\nshould be passed in as the main input file instead of a single BigWig file (EXPERIMENTAL)."
    prefix: "String to use to prefix all output files."
    no_auc_stdout: "Force all AUC(s) to be written to <prefix>.auc.tsv rather than STDOUT"
    no_annotation_stdout: "Force summarized annotation regions to be written to <prefix>.annotation.tsv rather than STDOUT"
    no_coverage_stdout: "Force covered regions to be written to <prefix>.coverage.tsv rather than STDOUT"
    keep_order: "Output annotation coverage in the order chromosomes appear in the BAM/BigWig file\\nThe default is to output annotation coverage in the order chromosomes appear in the annotation BED file.\\nThis is only applicable if --annotation is used for either BAM or BigWig input."
    annotation: "Only output the regions in this BED applying the argument to --op to them."
    op: "<sum[default], mean, min, max>     Statistic to run on the intervals provided by --annotation"
    sums_only: "Discard coordinates from output of summarized regions"
    bw_buffer: "<1GB[default]>               Size of buffer for reading BigWig files, critical to use a large value (~1GB) for remote BigWigs.\\nDefault setting should be fine for most uses, but raise if very slow on a remote BigWig."
    fast_a: "Path to the reference FASTA file if a CRAM file is passed as the input file (ignored otherwise)\\nIf not passed, references will be downloaded using the CRAM header."
    junctions: "Extract co-occurring jx coordinates, strand, and anchor length, per read\\nwrites to a TSV file <prefix>.jxs.tsv"
    all_junctions: "Extract all jx coordinates, strand, and anchor length, per read for any jx\\nwrites to a TSV file <prefix>.all_jxs.tsv"
    long_reads: "Modifies certain buffer sizes to accommodate longer reads such as PB/Oxford."
    filter_in: "Integer bitmask, any bits of which alignments need to have to be kept (similar to samtools view -f)."
    filter_out: "Integer bitmask, any bits of which alignments need to have to be skipped (similar to samtools view -F)."
    alts: "Print differing from ref per-base coverages\\nWrites to a CSV file <prefix>.alts.tsv"
    include_soft_clip: "Print a record to the alts CSV for soft-clipped bases\\nWrites total counts to a separate TSV file <prefix>.softclip.tsv"
    only_polya: "If --include-softclip, only print softclips which are mostly A's or T's"
    include_n: "Print mismatch records when mismatched read base is N"
    print_qual: "Print quality values for mismatched bases"
    delta: "Print POS field as +/- delta from previous"
    require_mdz: "Quit with error unless MD:Z field exists everywhere it's"
    print_perbase_coverage: "Print per-base coverage (slow but totally worth it)"
    auc: "Print per-base area-under-coverage, will generate it for the genome\\nand for the annotation if --annotation is also passed in\\nDefaults to STDOUT, unless other params are passed in as well, then\\nif writes to a TSV file <prefix>.auc.tsv"
    bigwig: "Output coverage as BigWig file(s).  Writes to <prefix>.bw\\n(also <prefix>.unique.bw when --min-unique-qual is specified).\\nRequires libBigWig."
    no_index: "If using --annotation, skip the use of the BAM index (BAI) for pulling out regions.\\nSetting this can be faster if doing windows across the whole genome.\\nThis will be turned on automatically if a window size is passed to --annotation."
    min_unique_qual: "Output second bigWig consisting built only from alignments\\nwith at least this mapping quality.  --bigwig must be specified.\\nAlso produces second set of annotation sums based on this coverage\\nif --annotation is enabled"
    double_count: "Allow overlapping ends of PE read to count twice toward"
    gzip: "Turns on gzipping of coverage output (no effect if --bigwig is passsed),\\nthis will also enable --no-coverage-stdout."
    read_ends: "Print counts of read starts/ends, if --min-unique-qual is set\\nthen only the alignments that pass that filter will be counted here\\nWrites to 2 TSV files: <prefix>.starts.tsv, <prefix>.ends.tsv"
    frag_dist: "Print fragment length distribution across the genome\\nWrites to a TSV file <prefix>.frags.tsv"
    echo_sam: "Print a SAM record for each aligned read"
    ends: "Report end coordinate for each read (useful for debugging)"
    test_polya: "Lower Poly-A filter minimums for testing (only useful for debugging/testing)"
    expected: "--head                       Print sequence names and lengths in SAM/BAM header"
    numbases_report_total: "--num-bases          Report total sum of bases in alignments processed (that pass filters)"
  }
  output {
    File out_stdout = stdout()
  }
}