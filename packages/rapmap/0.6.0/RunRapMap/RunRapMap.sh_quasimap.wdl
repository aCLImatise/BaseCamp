version 1.0

task RunRapMapshQuasimap {
  input {
    File? _index_pathrequired
    File? _leftmates_paththe
    File? _rightmates_reads
    File? _unmatedreads_paththe
    File? _output_paththe
    File? _compressedcompress_output
    Int? _numthreads_positive
    Boolean? _selalnperform_selective
    Boolean? mimic_bt_two
    Boolean? mimic_strict_bt_two
    Boolean? min_score_frac
    Int? max_mmp_extension
    Boolean? consensus_slack
    Int? ma
    Int? mm
    Int? go
    Int? ge
    Int? dp_bandwidth
    Boolean? no_orphans
    Boolean? no_dovetail
    Boolean? recover_orphans
    Boolean? hard_filter
    Boolean? _writeunmappedinclude_unmapped
    Boolean? _quietdisable_console
    Boolean? _chainingscore_hits
    Boolean? _fuzzyintersectionfind_pairedend
    Boolean? no_strict_check
    Boolean? no_sensitive
    Boolean? double_fraction_covered
    Int? _maxnumhits_integerreads
    Boolean? _nooutputdont_write
  }
  command <<<
    RunRapMap_sh quasimap \
      ~{if defined(_index_pathrequired) then ("-i " +  '"' + _index_pathrequired + '"') else ""} \
      ~{if defined(_leftmates_paththe) then ("-1 " +  '"' + _leftmates_paththe + '"') else ""} \
      ~{if defined(_rightmates_reads) then ("-2 " +  '"' + _rightmates_reads + '"') else ""} \
      ~{if defined(_unmatedreads_paththe) then ("-r " +  '"' + _unmatedreads_paththe + '"') else ""} \
      ~{if defined(_output_paththe) then ("-o " +  '"' + _output_paththe + '"') else ""} \
      ~{if (_compressedcompress_output) then "-x" else ""} \
      ~{if defined(_numthreads_positive) then ("-t " +  '"' + _numthreads_positive + '"') else ""} \
      ~{if (_selalnperform_selective) then "-s" else ""} \
      ~{if (mimic_bt_two) then "--mimicBT2" else ""} \
      ~{if (mimic_strict_bt_two) then "--mimicStrictBT2" else ""} \
      ~{if (min_score_frac) then "--minScoreFrac" else ""} \
      ~{if defined(max_mmp_extension) then ("--maxMMPExtension " +  '"' + max_mmp_extension + '"') else ""} \
      ~{if (consensus_slack) then "--consensusSlack" else ""} \
      ~{if defined(ma) then ("--ma " +  '"' + ma + '"') else ""} \
      ~{if defined(mm) then ("--mm " +  '"' + mm + '"') else ""} \
      ~{if defined(go) then ("--go " +  '"' + go + '"') else ""} \
      ~{if defined(ge) then ("--ge " +  '"' + ge + '"') else ""} \
      ~{if defined(dp_bandwidth) then ("--dpBandwidth " +  '"' + dp_bandwidth + '"') else ""} \
      ~{if (no_orphans) then "--noOrphans" else ""} \
      ~{if (no_dovetail) then "--noDovetail" else ""} \
      ~{if (recover_orphans) then "--recoverOrphans" else ""} \
      ~{if (hard_filter) then "--hardFilter" else ""} \
      ~{if (_writeunmappedinclude_unmapped) then "-u" else ""} \
      ~{if (_quietdisable_console) then "-q" else ""} \
      ~{if (_chainingscore_hits) then "-c" else ""} \
      ~{if (_fuzzyintersectionfind_pairedend) then "-f" else ""} \
      ~{if (no_strict_check) then "--noStrictCheck" else ""} \
      ~{if (no_sensitive) then "--noSensitive" else ""} \
      ~{if (double_fraction_covered) then "-z" else ""} \
      ~{if defined(_maxnumhits_integerreads) then ("-m " +  '"' + _maxnumhits_integerreads + '"') else ""} \
      ~{if (_nooutputdont_write) then "-n" else ""}
  >>>
  parameter_meta {
    _index_pathrequired: ",  --index <path>\\n(required)  The location of the quasiindex"
    _leftmates_paththe: ",  --leftMates <path>\\nThe location of the left paired-end reads"
    _rightmates_reads: ",  --rightMates <path>\\nThe location of the right paired-end reads"
    _unmatedreads_paththe: ",  --unmatedReads <path>\\nThe location of single-end reads"
    _output_paththe: ",  --output <path>\\nThe output file (default: stdout)"
    _compressedcompress_output: ",  --compressed\\nCompress the output SAM file using zlib"
    _numthreads_positive: ",  --numThreads <positive integer>\\nNumber of threads to use"
    _selalnperform_selective: ",  --selAln\\nPerform selective alignment to validate mapping hits"
    mimic_bt_two: "[only with selAln]: mimic Bowtie2-like default params but with\\n--no-mixed and --no-discordant"
    mimic_strict_bt_two: "[only with selAln]: mimic strict Bowtie2-like default params (e.g.\\nlike those recommended for running RSEM)"
    min_score_frac: "<ratio in (0,1]>\\n[only with selAln]: minimum score fraction for a valid alignment"
    max_mmp_extension: "1>\\n[only with selAln or with chaining]: maximum allowable MMP extension"
    consensus_slack: "<ratio in (0,1]>\\n[only with selAln]: consensus slack to apply during mapping"
    ma: "[only with selAln]: match score"
    mm: "[only with selAln]: mismatch penalty"
    go: "[only with selAln]: gap open penalty"
    ge: "[only with selAln]: gap extend penalty"
    dp_bandwidth: "[only with selAln]: bandwidth to use in extension alignment"
    no_orphans: "discard orphaned mappings"
    no_dovetail: "discard dovetailing mappings"
    recover_orphans: "perform orphan recovery to try and recover endpoints of orphaned reads"
    hard_filter: "[only with selAln]: apply hard filter to only return best alignments\\nfor each read"
    _writeunmappedinclude_unmapped: ",  --writeUnmapped\\ninclude unmapped reads in the output SAM records"
    _quietdisable_console: ",  --quiet\\nDisable all console output apart from warnings and errors"
    _chainingscore_hits: ",  --chaining\\nScore the hits to find the best chain"
    _fuzzyintersectionfind_pairedend: ",  --fuzzyIntersection\\nFind paired-end mapping locations using fuzzy intersection"
    no_strict_check: "Don't perform extra checks to try and assure that only equally \\\"best\\\"\\nmappings for a read are reported"
    no_sensitive: "Perform a less sensitive quasi-mapping by enabling NIP skipping"
    double_fraction_covered: "<double in [0,1]>,  --quasiCoverage <double in [0,1]>\\nRequire that this fraction of a read is covered by MMPs before it is\\nconsidered mappable."
    _maxnumhits_integerreads: ",  --maxNumHits <positive integer>\\nReads mapping to more than this many loci are discarded"
    _nooutputdont_write: ",  --noOutput\\nDon't write out any alignments (for speed testing purposes)"
  }
  output {
    File out_stdout = stdout()
    File out__output_paththe = "${in__output_paththe}"
    File out__compressedcompress_output = "${in__compressedcompress_output}"
  }
}