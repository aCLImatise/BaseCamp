version 1.0

task RunRapMapshQuasimap {
  input {
    File? index
    File? left_mates
    File? right_mates
    File? un_mated_reads
    File? output_file_default
    File? compressed
    Int? num_threads
    Boolean? sela_ln
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
    Boolean? write_unmapped
    Boolean? quiet
    Boolean? chaining
    Boolean? fuzzy_intersection
    Boolean? no_strict_check
    Boolean? no_sensitive
    Boolean? double_fraction_covered
    Int? max_num_hits
    Boolean? no_output
  }
  command <<<
    RunRapMap_sh quasimap \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(left_mates) then ("--leftMates " +  '"' + left_mates + '"') else ""} \
      ~{if defined(right_mates) then ("--rightMates " +  '"' + right_mates + '"') else ""} \
      ~{if defined(un_mated_reads) then ("--unmatedReads " +  '"' + un_mated_reads + '"') else ""} \
      ~{if defined(output_file_default) then ("--output " +  '"' + output_file_default + '"') else ""} \
      ~{if (compressed) then "--compressed" else ""} \
      ~{if defined(num_threads) then ("--numThreads " +  '"' + num_threads + '"') else ""} \
      ~{if (sela_ln) then "--selAln" else ""} \
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
      ~{if (write_unmapped) then "--writeUnmapped" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (chaining) then "--chaining" else ""} \
      ~{if (fuzzy_intersection) then "--fuzzyIntersection" else ""} \
      ~{if (no_strict_check) then "--noStrictCheck" else ""} \
      ~{if (no_sensitive) then "--noSensitive" else ""} \
      ~{if (double_fraction_covered) then "-z" else ""} \
      ~{if defined(max_num_hits) then ("--maxNumHits " +  '"' + max_num_hits + '"') else ""} \
      ~{if (no_output) then "--noOutput" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    index: "(required)  The location of the quasiindex"
    left_mates: "The location of the left paired-end reads"
    right_mates: "The location of the right paired-end reads"
    un_mated_reads: "The location of single-end reads"
    output_file_default: "The output file (default: stdout)"
    compressed: "Compress the output SAM file using zlib"
    num_threads: "Number of threads to use"
    sela_ln: "Perform selective alignment to validate mapping hits"
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
    write_unmapped: "include unmapped reads in the output SAM records"
    quiet: "Disable all console output apart from warnings and errors"
    chaining: "Score the hits to find the best chain"
    fuzzy_intersection: "Find paired-end mapping locations using fuzzy intersection"
    no_strict_check: "Don't perform extra checks to try and assure that only equally \\\"best\\\"\\nmappings for a read are reported"
    no_sensitive: "Perform a less sensitive quasi-mapping by enabling NIP skipping"
    double_fraction_covered: "<double in [0,1]>,  --quasiCoverage <double in [0,1]>\\nRequire that this fraction of a read is covered by MMPs before it is\\nconsidered mappable."
    max_num_hits: "Reads mapping to more than this many loci are discarded"
    no_output: "Don't write out any alignments (for speed testing purposes)"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_default = "${in_output_file_default}"
    File out_compressed = "${in_compressed}"
  }
}