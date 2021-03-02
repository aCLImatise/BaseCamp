version 1.0

task MikadoPick {
  input {
    File? configuration
    File? fast_a
    String? start_method
    Boolean? shm
    Int? procs
    File? scoring_file
    Int? _intronrange_intronrange
    Boolean? no_pad
    Boolean? pad
    Int? codon_table
    Int? pad_max_splices
    Int? pad_max_distance
    File? regions
    Boolean? no_cds
    File? flank
    Int? max_intron_length
    Boolean? no_purge
    Boolean? cds_only
    Boolean? as_cds_only
    Boolean? reference_update
    Boolean? report_all_orfs
    Boolean? only_reference_update
    Boolean? exclude_retained_introns
    Boolean? keep_disrupted_cds
    Int? min_clustering_cdna_overlap
    Int? min_clustering_cds_overlap
    Boolean? check_references
    File? sqlite_db
    Directory? output_dir
    Boolean? single
    String? mode
    Int? seed
    File? mono_loci_out
    String? prefix
    String? source
    File? log
    Boolean? verbose
    Boolean? no_verbose
    String? log_level
    String gff
  }
  command <<<
    mikado pick \
      ~{gff} \
      ~{if defined(configuration) then ("--configuration " +  '"' + configuration + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(start_method) then ("--start-method " +  '"' + start_method + '"') else ""} \
      ~{if (shm) then "--shm" else ""} \
      ~{if defined(procs) then ("--procs " +  '"' + procs + '"') else ""} \
      ~{if defined(scoring_file) then ("--scoring-file " +  '"' + scoring_file + '"') else ""} \
      ~{if defined(_intronrange_intronrange) then ("-i " +  '"' + _intronrange_intronrange + '"') else ""} \
      ~{if (no_pad) then "--no-pad" else ""} \
      ~{if (pad) then "--pad" else ""} \
      ~{if defined(codon_table) then ("--codon-table " +  '"' + codon_table + '"') else ""} \
      ~{if defined(pad_max_splices) then ("--pad-max-splices " +  '"' + pad_max_splices + '"') else ""} \
      ~{if defined(pad_max_distance) then ("--pad-max-distance " +  '"' + pad_max_distance + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if (no_cds) then "--no_cds" else ""} \
      ~{if defined(flank) then ("--flank " +  '"' + flank + '"') else ""} \
      ~{if defined(max_intron_length) then ("--max-intron-length " +  '"' + max_intron_length + '"') else ""} \
      ~{if (no_purge) then "--no-purge" else ""} \
      ~{if (cds_only) then "--cds-only" else ""} \
      ~{if (as_cds_only) then "--as-cds-only" else ""} \
      ~{if (reference_update) then "--reference-update" else ""} \
      ~{if (report_all_orfs) then "--report-all-orfs" else ""} \
      ~{if (only_reference_update) then "--only-reference-update" else ""} \
      ~{if (exclude_retained_introns) then "--exclude-retained-introns" else ""} \
      ~{if (keep_disrupted_cds) then "--keep-disrupted-cds" else ""} \
      ~{if defined(min_clustering_cdna_overlap) then ("--min-clustering-cdna-overlap " +  '"' + min_clustering_cdna_overlap + '"') else ""} \
      ~{if defined(min_clustering_cds_overlap) then ("--min-clustering-cds-overlap " +  '"' + min_clustering_cds_overlap + '"') else ""} \
      ~{if (check_references) then "--check-references" else ""} \
      ~{if defined(sqlite_db) then ("--sqlite-db " +  '"' + sqlite_db + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if (single) then "--single" else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(mono_loci_out) then ("--monoloci-out " +  '"' + mono_loci_out + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (no_verbose) then "--noverbose" else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mikado:2.0.2--py37hfa133b6_0"
  }
  parameter_meta {
    configuration: "JSON/YAML configuration file for Mikado."
    fast_a: "Genome FASTA file. Required for transcript padding."
    start_method: "Multiprocessing start method."
    shm: "Flag. If switched, Mikado pick will copy the database\\nto RAM (ie SHM) for faster access during the run."
    procs: "Number of processors to use. Default: look in the\\nconfiguration file (1 if undefined)"
    scoring_file: "Optional scoring file for the run. It will override\\nthe value set in the configuration."
    _intronrange_intronrange: "INTRON_RANGE, --intron-range INTRON_RANGE INTRON_RANGE\\nRange into which intron lengths should fall, as a\\ncouple of integers. Transcripts with intron lengths\\noutside of this range will be penalised. Default: (60,\\n900)"
    no_pad: "Disable transcript padding."
    pad: "Whether to pad transcripts in loci."
    codon_table: "Codon table to use. Default: 0 (ie Standard, NCBI #1,\\nbut only ATG is considered a valid start codon."
    pad_max_splices: "Maximum splice sites that can be crossed during\\ntranscript padding."
    pad_max_distance: "Maximum amount of bps that transcripts can be padded\\nwith (per side)."
    regions: "Either a single region on the CLI or a file listing a\\nseries of target regions. Mikado pick will only\\nconsider regions included in this string/file. Regions\\nshould be provided in a WebApollo-like format:\\n<chrom>:<start>..<end>"
    no_cds: "Flag. If set, not CDS information will be printed out\\nin the GFF output files."
    flank: "Flanking distance (in bps) to group non-overlapping\\ntranscripts into a single superlocus. Default:\\ndetermined by the configuration file."
    max_intron_length: "Maximum intron length for a transcript. Default:\\ninferred from the configuration file (default value\\nthere is 1,000,000 bps)."
    no_purge: "Flag. If set, the pipeline will NOT suppress any loci\\nwhose transcripts do not pass the requirements set in\\nthe JSON file."
    cds_only: "\\\"Flag. If set, Mikado will only look for overlap in\\nthe coding features when clustering transcripts\\n(unless one transcript is non-coding, in which case\\nthe whole transcript will be considered). Please note\\nthat Mikado will only consider the **best** ORF for\\nthis. Default: False, Mikado will consider transcripts\\nin their entirety."
    as_cds_only: "Flag. If set, Mikado will only consider the CDS to\\ndetermine whether a transcript is a valid alternative\\nsplicing event in a locus."
    reference_update: "Flag. If switched on, Mikado will prioritise\\ntranscripts marked as reference and will consider any\\nother transcipt within loci only in reference to these\\nreference transcripts. Novel loci will still be\\nreported."
    report_all_orfs: "Boolean switch. If set to true, all ORFs will be\\nreported, not just the primary."
    only_reference_update: "Flag. If switched on, Mikado will only keep loci where\\nat least one of the transcripts is marked as\\n\\\"reference\\\". CAUTION: if no transcript has been marked\\nas reference, the output will be completely empty!"
    exclude_retained_introns: "Exclude all retained intron alternative splicing\\nevents from the final output. Default: False. Retained\\nintron events that do not dirsupt the CDS are kept by\\nMikado in the final output."
    keep_disrupted_cds: "Keep in the final output transcripts whose CDS is most\\nprobably disrupted by a retained intron event.\\nDefault: False. Mikado will try to detect these\\ninstances and exclude them from the final output."
    min_clustering_cdna_overlap: "Minimum cDNA overlap between two transcripts for them\\nto be considered part of the same locus during the\\nlate picking stages. NOTE: if --min-cds-overlap is not\\nspecified, it will be set to this value! Default: 20%."
    min_clustering_cds_overlap: "Minimum CDS overlap between two transcripts for them\\nto be considered part of the same locus during the\\nlate picking stages. NOTE: if not specified, and\\n--min-cdna-overlap is specified on the command line,\\nmin-cds-overlap will be set to this value! Default:\\n20%."
    check_references: "Flag. If switched on, Mikado will also check reference\\nmodels against the general transcript requirements,\\nand will also consider them as potential fragments.\\nThis is useful in the context of e.g. updating an *ab-\\ninitio* results with data from RNASeq, protein\\nalignments, etc."
    sqlite_db: "Location of an SQLite database to overwrite what is\\nspecified in the configuration file."
    output_dir: "Output directory. Default: current working directory"
    single: "Flag. If set, Creator will be launched with a single\\nprocess, without involving the multithreading\\napparatus. Useful for debugging purposes only."
    mode: "Mode in which Mikado will treat transcripts with\\nmultiple ORFs. - nosplit: keep the transcripts whole.\\n- stringent: split multi-orf transcripts if two\\nconsecutive ORFs have both BLAST hits and none of\\nthose hits is against the same target. - lenient:\\nsplit multi-orf transcripts as in stringent, and\\nadditionally, also when either of the ORFs lacks a\\nBLAST hit (but not both). - permissive: like lenient,\\nbut also split when both ORFs lack BLAST hits - split:\\nsplit multi-orf transcripts regardless of what BLAST\\ndata is available."
    seed: "Random seed number."
    mono_loci_out: "This output file is mandatory. If it is not specified\\nin the configuration file, it must be provided here."
    prefix: "Prefix for the genes. Default: Mikado"
    source: "Source field to use for the output files."
    log: "File to write the log to. Default: decided by the\\nconfiguration file."
    verbose: "Flag. If set, the debug mode will be activated."
    no_verbose: "Flag. If set, the log will report only errors and\\ncritical events."
    log_level: "Logging level. Default: retrieved by the configuration\\nfile.\\n"
    gff: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
    File out_mono_loci_out = "${in_mono_loci_out}"
  }
}