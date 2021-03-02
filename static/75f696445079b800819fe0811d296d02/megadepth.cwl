class: CommandLineTool
id: megadepth.cwl
inputs:
- id: in_threads
  doc: "# of threads to do: BAM decompression OR compute sums over multiple BigWigs\
    \ in parallel\nif the 2nd is intended then a TXT file listing the paths to the\
    \ BigWigs to process in parallel\nshould be passed in as the main input file instead\
    \ of a single BigWig file (EXPERIMENTAL)."
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_prefix
  doc: String to use to prefix all output files.
  type: boolean?
  inputBinding:
    prefix: --prefix
- id: in_no_auc_stdout
  doc: Force all AUC(s) to be written to <prefix>.auc.tsv rather than STDOUT
  type: boolean?
  inputBinding:
    prefix: --no-auc-stdout
- id: in_no_annotation_stdout
  doc: Force summarized annotation regions to be written to <prefix>.annotation.tsv
    rather than STDOUT
  type: boolean?
  inputBinding:
    prefix: --no-annotation-stdout
- id: in_no_coverage_stdout
  doc: Force covered regions to be written to <prefix>.coverage.tsv rather than STDOUT
  type: boolean?
  inputBinding:
    prefix: --no-coverage-stdout
- id: in_keep_order
  doc: "Output annotation coverage in the order chromosomes appear in the BAM/BigWig\
    \ file\nThe default is to output annotation coverage in the order chromosomes\
    \ appear in the annotation BED file.\nThis is only applicable if --annotation\
    \ is used for either BAM or BigWig input."
  type: boolean?
  inputBinding:
    prefix: --keep-order
- id: in_annotation
  doc: Only output the regions in this BED applying the argument to --op to them.
  type: string?
  inputBinding:
    prefix: --annotation
- id: in_op
  doc: <sum[default], mean, min, max>     Statistic to run on the intervals provided
    by --annotation
  type: boolean?
  inputBinding:
    prefix: --op
- id: in_sums_only
  doc: Discard coordinates from output of summarized regions
  type: boolean?
  inputBinding:
    prefix: --sums-only
- id: in_bw_buffer
  doc: "<1GB[default]>               Size of buffer for reading BigWig files, critical\
    \ to use a large value (~1GB) for remote BigWigs.\nDefault setting should be fine\
    \ for most uses, but raise if very slow on a remote BigWig."
  type: boolean?
  inputBinding:
    prefix: --bwbuffer
- id: in_fast_a
  doc: "Path to the reference FASTA file if a CRAM file is passed as the input file\
    \ (ignored otherwise)\nIf not passed, references will be downloaded using the\
    \ CRAM header."
  type: boolean?
  inputBinding:
    prefix: --fasta
- id: in_junctions
  doc: "Extract co-occurring jx coordinates, strand, and anchor length, per read\n\
    writes to a TSV file <prefix>.jxs.tsv"
  type: boolean?
  inputBinding:
    prefix: --junctions
- id: in_all_junctions
  doc: "Extract all jx coordinates, strand, and anchor length, per read for any jx\n\
    writes to a TSV file <prefix>.all_jxs.tsv"
  type: boolean?
  inputBinding:
    prefix: --all-junctions
- id: in_long_reads
  doc: Modifies certain buffer sizes to accommodate longer reads such as PB/Oxford.
  type: boolean?
  inputBinding:
    prefix: --longreads
- id: in_filter_in
  doc: Integer bitmask, any bits of which alignments need to have to be kept (similar
    to samtools view -f).
  type: boolean?
  inputBinding:
    prefix: --filter-in
- id: in_filter_out
  doc: Integer bitmask, any bits of which alignments need to have to be skipped (similar
    to samtools view -F).
  type: boolean?
  inputBinding:
    prefix: --filter-out
- id: in_alts
  doc: "Print differing from ref per-base coverages\nWrites to a CSV file <prefix>.alts.tsv"
  type: boolean?
  inputBinding:
    prefix: --alts
- id: in_include_soft_clip
  doc: "Print a record to the alts CSV for soft-clipped bases\nWrites total counts\
    \ to a separate TSV file <prefix>.softclip.tsv"
  type: boolean?
  inputBinding:
    prefix: --include-softclip
- id: in_only_polya
  doc: If --include-softclip, only print softclips which are mostly A's or T's
  type: boolean?
  inputBinding:
    prefix: --only-polya
- id: in_include_n
  doc: Print mismatch records when mismatched read base is N
  type: boolean?
  inputBinding:
    prefix: --include-n
- id: in_print_qual
  doc: Print quality values for mismatched bases
  type: boolean?
  inputBinding:
    prefix: --print-qual
- id: in_delta
  doc: Print POS field as +/- delta from previous
  type: boolean?
  inputBinding:
    prefix: --delta
- id: in_require_mdz
  doc: Quit with error unless MD:Z field exists everywhere it's
  type: boolean?
  inputBinding:
    prefix: --require-mdz
- id: in_print_perbase_coverage
  doc: Print per-base coverage (slow but totally worth it)
  type: boolean?
  inputBinding:
    prefix: --coverage
- id: in_auc
  doc: "Print per-base area-under-coverage, will generate it for the genome\nand for\
    \ the annotation if --annotation is also passed in\nDefaults to STDOUT, unless\
    \ other params are passed in as well, then\nif writes to a TSV file <prefix>.auc.tsv"
  type: boolean?
  inputBinding:
    prefix: --auc
- id: in_bigwig
  doc: "Output coverage as BigWig file(s).  Writes to <prefix>.bw\n(also <prefix>.unique.bw\
    \ when --min-unique-qual is specified).\nRequires libBigWig."
  type: boolean?
  inputBinding:
    prefix: --bigwig
- id: in_no_index
  doc: "If using --annotation, skip the use of the BAM index (BAI) for pulling out\
    \ regions.\nSetting this can be faster if doing windows across the whole genome.\n\
    This will be turned on automatically if a window size is passed to --annotation."
  type: boolean?
  inputBinding:
    prefix: --no-index
- id: in_min_unique_qual
  doc: "Output second bigWig consisting built only from alignments\nwith at least\
    \ this mapping quality.  --bigwig must be specified.\nAlso produces second set\
    \ of annotation sums based on this coverage\nif --annotation is enabled"
  type: long?
  inputBinding:
    prefix: --min-unique-qual
- id: in_double_count
  doc: Allow overlapping ends of PE read to count twice toward
  type: boolean?
  inputBinding:
    prefix: --double-count
- id: in_gzip
  doc: "Turns on gzipping of coverage output (no effect if --bigwig is passsed),\n\
    this will also enable --no-coverage-stdout."
  type: boolean?
  inputBinding:
    prefix: --gzip
- id: in_read_ends
  doc: "Print counts of read starts/ends, if --min-unique-qual is set\nthen only the\
    \ alignments that pass that filter will be counted here\nWrites to 2 TSV files:\
    \ <prefix>.starts.tsv, <prefix>.ends.tsv"
  type: boolean?
  inputBinding:
    prefix: --read-ends
- id: in_frag_dist
  doc: "Print fragment length distribution across the genome\nWrites to a TSV file\
    \ <prefix>.frags.tsv"
  type: boolean?
  inputBinding:
    prefix: --frag-dist
- id: in_echo_sam
  doc: Print a SAM record for each aligned read
  type: boolean?
  inputBinding:
    prefix: --echo-sam
- id: in_ends
  doc: Report end coordinate for each read (useful for debugging)
  type: boolean?
  inputBinding:
    prefix: --ends
- id: in_test_polya
  doc: Lower Poly-A filter minimums for testing (only useful for debugging/testing)
  type: boolean?
  inputBinding:
    prefix: --test-polya
- id: in_expected
  doc: --head                       Print sequence names and lengths in SAM/BAM header
  type: string
  inputBinding:
    position: 0
- id: in_numbases_report_total
  doc: --num-bases          Report total sum of bases in alignments processed (that
    pass filters)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/megadepth:1.1.0--h5675ecd_0
cwlVersion: v1.1
baseCommand:
- megadepth
