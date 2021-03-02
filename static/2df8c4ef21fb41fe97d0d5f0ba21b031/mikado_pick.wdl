version 1.0

task MikadoPick {
  input {
    File? json_conf
    File? fast_a
    String? start_method
    Boolean? shm
    Int? procs
    File? scoring_file
    Int? _intronrange_intronrange
    Boolean? no_pad
    Boolean? pad
    Int? pad_max_splices
    Int? pad_max_distance
    File? regions
    Boolean? no_cds
    File? flank
    Int? max_intron_length
    Boolean? no_purge
    Boolean? cds_only
    Boolean? only_reference_update
    Boolean? exclude_retained_introns
    Boolean? keep_disrupted_cds
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
      ~{if defined(json_conf) then ("--json-conf " +  '"' + json_conf + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(start_method) then ("--start-method " +  '"' + start_method + '"') else ""} \
      ~{if (shm) then "--shm" else ""} \
      ~{if defined(procs) then ("--procs " +  '"' + procs + '"') else ""} \
      ~{if defined(scoring_file) then ("--scoring-file " +  '"' + scoring_file + '"') else ""} \
      ~{if defined(_intronrange_intronrange) then ("-i " +  '"' + _intronrange_intronrange + '"') else ""} \
      ~{if (no_pad) then "--no-pad" else ""} \
      ~{if (pad) then "--pad" else ""} \
      ~{if defined(pad_max_splices) then ("--pad-max-splices " +  '"' + pad_max_splices + '"') else ""} \
      ~{if defined(pad_max_distance) then ("--pad-max-distance " +  '"' + pad_max_distance + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if (no_cds) then "--no_cds" else ""} \
      ~{if defined(flank) then ("--flank " +  '"' + flank + '"') else ""} \
      ~{if defined(max_intron_length) then ("--max-intron-length " +  '"' + max_intron_length + '"') else ""} \
      ~{if (no_purge) then "--no-purge" else ""} \
      ~{if (cds_only) then "--cds-only" else ""} \
      ~{if (only_reference_update) then "--only-reference-update" else ""} \
      ~{if (exclude_retained_introns) then "--exclude-retained-introns" else ""} \
      ~{if (keep_disrupted_cds) then "--keep-disrupted-cds" else ""} \
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
    docker: "None"
  }
  parameter_meta {
    json_conf: "[--scoring-file SCORING_FILE]"
    fast_a: "Genome FASTA file. Required for transcript padding.\\n(default: None)"
    start_method: "Multiprocessing start method. (default: None)"
    shm: "Flag. If switched, Mikado pick will copy the database\\nto RAM (ie SHM) for faster access during the run.\\n(default: False)"
    procs: "Number of processors to use. Default: look in the\\nconfiguration file (1 if undefined) (default: None)"
    scoring_file: "Optional scoring file for the run. It will override\\nthe value set in the configuration. (default: None)"
    _intronrange_intronrange: "INTRON_RANGE, --intron-range INTRON_RANGE INTRON_RANGE\\nRange into which intron lengths should fall, as a\\ncouple of integers. Transcripts with intron lengths\\noutside of this range will be penalised. Default: (60,\\n900) (default: None)"
    no_pad: "Disable transcript padding. (default: None)"
    pad: "Whether to pad transcripts in loci. (default: None)"
    pad_max_splices: "Maximum splice sites that can be crossed during\\ntranscript padding. (default: None)"
    pad_max_distance: "Maximum amount of bps that transcripts can be padded\\nwith (per side). (default: None)"
    regions: "Either a single region on the CLI or a file listing a\\nseries of target regions. Mikado pick will only\\nconsider regions included in this string/file. Regions\\nshould be provided in a WebApollo-like format:\\n<chrom>:<start>..<end> (default: None)"
    no_cds: "Flag. If set, not CDS information will be printed out\\nin the GFF output files. (default: False)"
    flank: "Flanking distance (in bps) to group non-overlapping\\ntranscripts into a single superlocus. Default:\\ndetermined by the configuration file. (default: None)"
    max_intron_length: "Maximum intron length for a transcript. Default:\\ninferred from the configuration file (default value\\nthere is 1,000,000 bps). (default: None)"
    no_purge: "Flag. If set, the pipeline will NOT suppress any loci\\nwhose transcripts do not pass the requirements set in\\nthe JSON file. (default: False)"
    cds_only: "\\\"Flag. If set, Mikado will only look for overlap in\\nthe coding features when clustering transcripts\\n(unless one transcript is non-coding, in which case\\nthe whole transcript will be considered). Please note\\nthat Mikado will only consider the **best** ORF for\\nthis. Default: False, Mikado will consider transcripts\\nin their entirety. (default: False)"
    only_reference_update: "Flag. If switched on, Mikado will only keep loci where\\nat least one of the transcripts is marked as\\n\\\"reference\\\". CAUTION: new and experimental. If no\\ntranscript has been marked as reference, the output\\nwill be completely empty! (default: None)"
    exclude_retained_introns: "Exclude all retained intron alternative splicing\\nevents from the final output. Default: False. Retained\\nintron events that do not dirsupt the CDS are kept by\\nMikado in the final output. (default: None)"
    keep_disrupted_cds: "Keep in the final output transcripts whose CDS is most\\nprobably disrupted by a retained intron event.\\nDefault: False. Mikado will try to detect these\\ninstances and exclude them from the final output.\\n(default: None)"
    check_references: "Flag. If switched on, Mikado will also check reference\\nmodels against the general transcript requirements,\\nand will also consider them as potential fragments.\\nThis is useful in the context of e.g. updating an *ab-\\ninitio* results with data from RNASeq, protein\\nalignments, etc. (default: None)"
    sqlite_db: "Location of an SQLite database to overwrite what is\\nspecified in the configuration file. (default: None)"
    output_dir: "Output directory. Default: current working directory\\n(default: None)"
    single: "Flag. If set, Creator will be launched with a single\\nprocess, without involving the multithreading\\napparatus. Useful for debugging purposes only.\\n(default: False)"
    mode: "Mode in which Mikado will treat transcripts with\\nmultiple ORFs. - nosplit: keep the transcripts whole.\\n- stringent: split multi-orf transcripts if two\\nconsecutive ORFs have both BLAST hits and none of\\nthose hits is against the same target. - lenient:\\nsplit multi-orf transcripts as in stringent, and\\nadditionally, also when either of the ORFs lacks a\\nBLAST hit (but not both). - permissive: like lenient,\\nbut also split when both ORFs lack BLAST hits - split:\\nsplit multi-orf transcripts regardless of what BLAST\\ndata is available. (default: None)"
    seed: "Random seed number. (default: None)"
    mono_loci_out: "This output file is mandatory. If it is not specified\\nin the configuration file, it must be provided here.\\n(default: None)"
    prefix: "Prefix for the genes. Default: Mikado (default: None)"
    source: "Source field to use for the output files. (default:\\nNone)"
    log: "File to write the log to. Default: decided by the\\nconfiguration file. (default: None)"
    verbose: "Flag. If set, the debug mode will be activated.\\n(default: False)"
    no_verbose: "Flag. If set, the log will report only errors and\\ncritical events. (default: False)"
    log_level: "Logging level. Default: retrieved by the configuration\\nfile. (default: None)\\n"
    gff: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
    File out_mono_loci_out = "${in_mono_loci_out}"
  }
}