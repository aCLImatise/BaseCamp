version 1.0

task Gemmapper {
  input {
    File? mandatory
    Boolean? emulate_complement
    String? fasta_fastq_map
    Int? granularity
    String? defaultstdout
    Boolean? quality_format
    Int? gem_quality_threshold
    String? mismatch_alphabet
    Int? mismatches__default
    Int? var_9
    Int? min_matched_bases
    Int? max_big_in_del_length
    Int? strata_after_best
    Int? fast_mapping
    Boolean? unique_mapping
    Int? max_decoded_matches
    Int? min_decoded_strata
    Boolean? paired_end_alignment
    Boolean? map_both_ends
    Int? min_insert_size
    Int? var_20
    Int? max_extendable_matches
    Int? max_extensions_per_match
    Boolean? unique_pairing
    Int? threads
    Boolean? verbose
    Boolean? show_license
    String gem_mapper
  }
  command <<<
    gem_mapper \
      ~{gem_mapper} \
      ~{if defined(mandatory) then ("-I " +  '"' + mandatory + '"') else ""} \
      ~{if (emulate_complement) then "--emulate-complement" else ""} \
      ~{if defined(fasta_fastq_map) then ("-i " +  '"' + fasta_fastq_map + '"') else ""} \
      ~{if defined(granularity) then ("--granularity " +  '"' + granularity + '"') else ""} \
      ~{if defined(defaultstdout) then ("-o " +  '"' + defaultstdout + '"') else ""} \
      ~{if (quality_format) then "--quality-format" else ""} \
      ~{if defined(gem_quality_threshold) then ("--gem-quality-threshold " +  '"' + gem_quality_threshold + '"') else ""} \
      ~{if defined(mismatch_alphabet) then ("--mismatch-alphabet " +  '"' + mismatch_alphabet + '"') else ""} \
      ~{if defined(mismatches__default) then ("-m " +  '"' + mismatches__default + '"') else ""} \
      ~{if defined(var_9) then ("-e " +  '"' + var_9 + '"') else ""} \
      ~{if defined(min_matched_bases) then ("--min-matched-bases " +  '"' + min_matched_bases + '"') else ""} \
      ~{if defined(max_big_in_del_length) then ("--max-big-indel-length " +  '"' + max_big_in_del_length + '"') else ""} \
      ~{if defined(strata_after_best) then ("--strata-after-best " +  '"' + strata_after_best + '"') else ""} \
      ~{if defined(fast_mapping) then ("--fast-mapping " +  '"' + fast_mapping + '"') else ""} \
      ~{if (unique_mapping) then "--unique-mapping" else ""} \
      ~{if defined(max_decoded_matches) then ("--max-decoded-matches " +  '"' + max_decoded_matches + '"') else ""} \
      ~{if defined(min_decoded_strata) then ("--min-decoded-strata " +  '"' + min_decoded_strata + '"') else ""} \
      ~{if (paired_end_alignment) then "--paired-end-alignment" else ""} \
      ~{if (map_both_ends) then "--map-both-ends" else ""} \
      ~{if defined(min_insert_size) then ("--min-insert-size " +  '"' + min_insert_size + '"') else ""} \
      ~{if defined(var_20) then ("-E " +  '"' + var_20 + '"') else ""} \
      ~{if defined(max_extendable_matches) then ("--max-extendable-matches " +  '"' + max_extendable_matches + '"') else ""} \
      ~{if defined(max_extensions_per_match) then ("--max-extensions-per-match " +  '"' + max_extensions_per_match + '"') else ""} \
      ~{if (unique_pairing) then "--unique-pairing" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (show_license) then "--show-license" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gem2:20200110--0"
  }
  parameter_meta {
    mandatory: "(mandatory)"
    emulate_complement: "(for indices lacking it)"
    fasta_fastq_map: "(FASTA, FASTQ or MAP, default=stdin)"
    granularity: "(default=10000 lines from stdin,\\n2500000 bytes from file)"
    defaultstdout: "(default=stdout)"
    quality_format: "'ignore'|'offset-33'|'offset-64'\\n(mandatory with FASTQ input)"
    gem_quality_threshold: "(default=26, that is e<=2e-3)"
    mismatch_alphabet: "(default=\\\"ACGT\\\")"
    mismatches__default: "|<%_mismatches>       (default=0.04)"
    var_9: "|<%_differences>   (default=0.04)"
    min_matched_bases: "|<%>         (default=0.80)"
    max_big_in_del_length: "(default=15)"
    strata_after_best: "(default=0)"
    fast_mapping: "|'adaptive'       (default=false)"
    unique_mapping: "(default=false)"
    max_decoded_matches: "|'all'  (default=20)"
    min_decoded_strata: "(default=1)"
    paired_end_alignment: "(default=false)"
    map_both_ends: "(default=false)"
    min_insert_size: "(default=0)"
    var_20: "|<%_differences>   (default=0.30)"
    max_extendable_matches: "|'all'  (default=20)"
    max_extensions_per_match: "(default=1)"
    unique_pairing: "(default=false)"
    threads: "(default=1)"
    verbose: "(default=false)"
    show_license: "(print license)"
    gem_mapper: "[File input/output]"
  }
  output {
    File out_stdout = stdout()
  }
}